if ( $psISE ) {
    # Set Variables
    # # Find Valid Font
    if ( Test-Path "C:\Windows\Fonts\Inconsolata-dz.otf" ) {
        $FontName = 'Inconsolata-dz'
        $FontSize = 9
    } elseif ( Test-Path "C:\Windows\Fonts\consola.ttf" ) {
        $FontName = 'Consolas'
        $FontSize = 10
    } else {
        $FontName = 'Lucidia Console' # Default font for PowerShell
        $FontSize = 10
    }
    
    # # Colors
    # # # Found via flatuicolors.co
       $Turquoise = '1ABC9C' # Turquoise
        $GreenSea = '16A085' # Dark Turquoise
         $Emerald = '2ECC71' # Green
       $Nephritis = '27AE60' # Dark Green
      $PeterRiver = '3498DB' # Blue
      $BelizeHole = '2980B9' # Dark Blue
        $Amethyst = '9B59B6' # Purple
        $Wisteria = '8E44AD' # Dark Purple
      $WetAsphalt = '34495E' # Navy
    $MidnightBlue = '2C3E50' # Dark Navy
       $SunFlower = 'F1C40F' # Yellow
          $Orange = 'F39C12' # Light Orange
          $Carrot = 'E67E22' # Orange
         $Pumpkin = 'D35400' # Dark Orange
        $Alizarin = 'E74C3C' # Red
     $Pomegranate = 'C0392B' # Dark Red
          $Clouds = 'ECF0F1' # White
          $Silver = 'BDC3C7' # Light Gray
        $Concrete = '95A5A6' # Gray
        $Asbestos = '7F8C8D' # Dary Gray
    # # # Custom Colors
           $Black = '1E1E1E' # Black
      $LightBlack = '282828' # Light Black
    
    # # Define Color Scheme 
    $ColorScheme = @(
        @{ Item = 'Attribute'          ; Color = $GreenSea    }
        @{ Item = 'Command'            ; Color = $Clouds      }
        @{ Item = 'CommandArgument'    ; Color = $Asbestos    }
        @{ Item = 'CommandParameter'   ; Color = $Concrete    }
        @{ Item = 'Comment'            ; Color = $Nephritis   }
        @{ Item = 'GroupEnd'           ; Color = $Clouds      }
        @{ Item = 'GroupStart'         ; Color = $Clouds      }
        @{ Item = 'Keyword'            ; Color = $BelizeHole  }
        @{ Item = 'LineContinuation'   ; Color = $SunFlower   }
        @{ Item = 'LoopLabel'          ; Color = $Clouds      }
        @{ Item = 'Member'             ; Color = $Clouds      }
        @{ Item = 'Number'             ; Color = $Amethyst    }
        @{ Item = 'Operator'           ; Color = $Clouds      }
        @{ Item = 'StatementSeparator' ; Color = $SunFlower   }
        @{ Item = 'String'             ; Color = $Silver      }
        @{ Item = 'Type'               ; Color = $Pomegranate }
        @{ Item = 'Variable'           ; Color = $PeterRiver  }
    )
    
    # Theme PowerShell ISE
    # # Set Font Settings
    $psISE.Options.FontName = $FontName             
    $psISE.Options.FontSize = $FontSize
    
    # # Theme Script Pane
    $psISE.Options.ScriptPaneBackgroundColor = "#FF$Black"
    $psISE.Options.ScriptPaneForegroundColor = "#FF$Clouds"
    # # # Set Token Colors based of color scheme
    $ColorScheme | %{
        $psISE.Options.TokenColors.Item($_.Item) = "#FF$($_.Color)"
    }
    
    # # Theme Console Pane
    $psISE.Options.ConsolePaneBackgroundColor = "#FF$Black"
    $psISE.Options.ConsolePaneForegroundColor = "#FF$Clouds"
    $psISE.Options.ConsolePaneTextBackgroundColor = "#FF$Black"
    # # # Set Token Colors based of color scheme
    $ColorScheme | %{
        $psISE.Options.ConsoleTokenColors.Item($_.Item) = "#FF$($_.Color)"
    }
    
    # # Theme Output Streams
    $psISE.Options.ErrorBackgroundColor = "#FF$LightBlack"
    $psISE.Options.WarningBackgroundColor = "#FF$LightBlack"
    $psISE.Options.VerboseBackgroundColor = "#FF$LightBlack"
    $psISE.Options.DebugBackgroundColor = "#FF$LightBlack"
    $psISE.Options.ErrorForegroundColor = "#FF$Alizarin"
    $psISE.Options.WarningForegroundColor = "#FF$Carrot"
    $psISE.Options.VerboseForegroundColor = "#FF$PeterRiver"
    $psISE.Options.DebugForegroundColor = "#FF$Emerald"
} # End if using PowerShell ISE
