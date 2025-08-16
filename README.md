# FMP: Flutter MVVM Provider Auto Creator


                   ===========                                                                      
                 ===========-            #####           ######         ##################          
               ============            #######        #########      ########################       
             ===========-             #########      ##########      #########################      
           ============               ##########    ###########     ##########################      
         ============                ###########   #############       ##########    ##########     
       ============                  ############ ##############       #########     #########      
     ============                    ###########################       #########    ##########      
   ============    ===========      #############################      ######### #############      
   ==========    ============       #############################      #####################        
     ======    ============        ###################  #########      ###################          
       ==    ============          #######  #########    ########     ################              
           ============           ########  ########     ########     #########                     
           ========+###           ########   ######      #########    #########                     
             ====+#######        ########     ####        ########    #########                     
               =#%#########      #######      ###         ########    #########                     
                 ############     ######                  ######      #####                         
                   ###########                    



**FMP** is a tool for rapidly scaffolding Flutter projects using the MVVM (Model-View-ViewModel) architecture with Provider for state management.

### Features

- **MVVM Structure**: Auto-generates folders and files for Models, Views, and ViewModels.
- **Provider Integration**: Sets up Provider for dependency injection and state management.
- **Boilerplate Reduction**: Quickly creates ViewModel classes, ChangeNotifierProviders, and connects them to your UI.
- **Customizable**: Easily extend or modify generated code to fit your project needs.

### How It Works

1. **Install FMP** via pub.
2. **Run the CLI** to generate MVVM modules:
   - `fmp create module_name`
3. **Generated Structure**:
    ```
    lib/
      models/
        module_name_model.dart
      viewmodels/
        module_name_viewmodel.dart
      views/
        module_name_view.dart
    ```
4. **Provider Setup**: Auto-wires ViewModel with Provider in your main app or specific screens.

### Example Usage

```bash
fmp create user