hoja <- "2.1"
ruta <- "D:/Varios/pagithub/proy1/II_Marco_Regulatorio_2016_est_nvo_pint.xlsx"


pinta <- function(est, cv, hoja, ruta){
  
  A <- openxlsx::read.xlsx(ruta, sheet = hoja, colNames = F, skipEmptyRows = F)
  ren <- which(A$X1%in%'Estados Unidos Mexicanos')
  wb <- openxlsx::loadWorkbook(ruta)
  
  estilo_a0 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8, numFmt = "### ### ##0", textDecoration = "Bold",
                                    halign = 'right', valign = 'center', fgFill = '#FF5400')

  estilo_a1 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8, numFmt = "### ### ##0",
                                    halign = 'right', valign = 'center', fgFill = '#FFEA00')
  estilo_a2 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8,  numFmt = "### ### ##0",
                                    halign = 'right', valign = 'center', fgFill = '#FF5400')
  estilo_a3 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8,  numFmt = "### ### ##0",
                                     halign = 'right', valign = 'center', fgFill = '#FFFFFF')
  
  estilo_r1 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8, numFmt = "0.0",
                                    halign = 'right', valign = 'center', fgFill = '#FFEA00')
  estilo_r2 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8,  numFmt = "0.0",
                                     halign = 'right', valign = 'center', fgFill = '#FF5400')
  estilo_r3 <- openxlsx::createStyle(fontName = 'Arial', fontSize = 8,  numFmt = "0.0",
                                     halign = 'right', valign = 'center', fgFill = '#FFFFFF')
  
  
  for( i in 1:dim(cv)[1] ){
     if(cv[i,2]=="NA" | is.na(cv[i,2]) | cv[i,2]==0){
     openxlsx::addStyle(wb, sheet = hoja, estilo_a3, rows = (ren-1+i), cols = 2)
     }else{
     if( any(20<=as.numeric(cv[i,2]) & as.numeric(cv[i,2])<30, na.rm = T)==T ){
     openxlsx::addStyle(wb, sheet = hoja, estilo_a1, rows = (ren-1+i), cols = 2)
     }else if( any(30 <= as.numeric(cv[i,2]), na.rm = T)==T ){
     openxlsx::addStyle(wb, sheet = hoja, estilo_a2, rows = (ren-1+i), cols = 2)
     }else{
       
      }
     }
    }
  
  superior <- (dim(est)[2]-2)/3
  
  for(i in 1:superior){
    k <- 1+3*i
    for(j in 1:dim(est)[1]){
      if( any(20<=as.numeric(cv[j,k]) & as.numeric(cv[j,k])<30, na.rm = T)==T){
        openxlsx::addStyle(wb, sheet = hoja, estilo_a1, rows = ren-1 + j, cols = k)
      }else if(any( 30 <= as.numeric(cv[j,k]), na.rm = T)==T){
        openxlsx::addStyle(wb, sheet = hoja, estilo_a2, rows = ren-1+j, cols = k)
      }else{
       
      }
     }
    }
  
  
  for(i in 1:superior){
    k <- 2+3*i
    for(j in 1:dim(est)[1]){
      if(any(20<=as.numeric(cv[j,k]) & as.numeric(cv[j,k])<30, na.rm = T)==T){
        openxlsx::addStyle(wb, sheet = hoja, estilo_r1, rows = ren-1+j, cols = k)
      }else if(any(30 <= as.numeric(cv[j,k]), na.rm = T)==T){
        openxlsx::addStyle(wb, sheet = hoja, estilo_r2, rows = ren-1+j, cols = k)
      }else{
 
      }
     }
    }

  openxlsx::writeData(wb,sheet = hoja,est,startRow = ren,colNames = F,na.string = NULL)
  openxlsx::saveWorkbook(wb,ruta,overwrite = T)

  }


