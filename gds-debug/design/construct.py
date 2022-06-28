#! /usr/bin/env python
#=========================================================================
# construct.py
#=========================================================================
# Demo with 16-bit GcdUnit
#
# Author      : Priyanka Raina
# Date        : December 4, 2020
# Modified by : Allen Pan
# Date        : March 15, 2022
from email.policy import default
import os
import sys
from mflowgen.components import Graph, Step
def construct():
  g = Graph()
  g.sys_path.append('/home/users/lyt1314/ee372/aloe-sky130')
  #-----------------------------------------------------------------------
  # Parameters
  #-----------------------------------------------------------------------
  adk_name = 'skywater-130nm-analog-adk'
  adk_view = 'view-standard'
  parameters = {
    'construct_path' : __file__,
    'design_name'    : 'user_analog_project_wrapper',
    'clock_period'   : 10.0,
    'adk'            : adk_name,
    'adk_view'       : adk_view,
    'topographical'  : True,
    # 'dut_name'       : 'GcdUnit_inst'
  }
  #-----------------------------------------------------------------------
  # Create nodes
  #-----------------------------------------------------------------------
  this_dir = os.path.dirname( os.path.abspath( __file__ ) )
  # ADK step
  g.set_adk( adk_name )
  adk = g.get_adk_step()
 
  klayout_drc_gds = Step( this_dir + '/klayout-drc-gds'                 )

  #-----------------------------------------------------------------------
  # Graph -- Add nodes
  #-----------------------------------------------------------------------
  
  g.add_step( klayout_drc_gds )
  #-----------------------------------------------------------------------
  # Graph -- Add edges
  #-----------------------------------------------------------------------
  # Connect by name
  # g.connect_by_name( gdsmerge,        klayout_drc_gds )
  #----------------------------------------------------------------------
  # Parameterize
  #-----------------------------------------------------------------------
  g.update_params( parameters )
  return g
if __name__ == '__main__':
  g = construct()
  g.plot()