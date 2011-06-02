############################################################################
## 
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies). 
## All rights reserved. 
## Contact: Nokia Corporation (testabilitydriver@nokia.com) 
## 
## This file is part of TDriver. 
## 
## If you have questions regarding the use of this file, please contact 
## Nokia at testabilitydriver@nokia.com . 
## 
## This library is free software; you can redistribute it and/or 
## modify it under the terms of the GNU Lesser General Public 
## License version 2.1 as published by the Free Software Foundation 
## and appearing in the file LICENSE.LGPL included in the packaging 
## of this file. 
## 
############################################################################

module MobyController

  module QT

	  module VersionCommand

	    # Execute the command
	    # Sends the message to the device using the @sut_adapter (see base class)     
	    # == params         
	    # == returns
	    # == raises
	    # NotImplementedError: raised if unsupported command type       
	    def execute

        # TODO: message contructed with builder 
		    @sut_adapter.send_service_request(

          MobyController::QT::Comms::MessageGenerator.generate( "<TasCommands service=\"versionService\" />" ), false

        )

	    end

	    def set_adapter( adapter )

  		  @sut_adapter = adapter

	    end

	    # enable hooking for performance measurement & debug logging
	    TDriver::Hooking.hook_methods( self ) if defined?( TDriver::Hooking )

	  end # VersionCommand
	
  end # QT

end # MobyController