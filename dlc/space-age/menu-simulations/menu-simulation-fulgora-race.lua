return [[
  local driving_data =
  {
    {{{1,1},{-28.48,14.38}},{{1,1},{-28.48,14.38}},{{1,1},{-28.42,14.38}},{{1,1},{-28.34,14.38}},{{1,1},{-28.25,14.38}},{{1,1},{-28.15,14.38}},{{1,1},{-28.04,14.38}},{{1,1},{-27.93,14.38}},{{1,1},{-27.80,14.38}},{{1,1},{-27.67,14.38}},{{1,1},{-27.53,14.38}},{{1,1},{-27.39,14.38}},{{1,1},{-27.24,14.38}},{{1,1},{-27.08,14.38}},{{1,1},{-26.92,14.38}},{{1,1},{-26.75,14.38}},{{1,1},{-26.58,14.38}},{{1,1},{-26.41,14.38}},{{1,1},{-26.23,14.38}},{{1,1},{-26.04,14.38}},{{1,1},{-25.86,14.38}},{{1,1},{-25.66,14.38}},{{1,1},{-25.47,14.38}},{{1,1},{-25.27,14.38}},{{1,1},{-25.07,14.38}},{{1,1},{-24.86,14.38}},{{1,1},{-24.65,14.38}},{{1,0},{-24.43,14.38}},{{1,0},{-24.21,14.38}},{{1,0},{-24.00,14.37}},{{1,0},{-23.77,14.35}},{{1,0},{-23.55,14.32}},{{1,0},{-23.32,14.29}},{{1,0},{-23.10,14.23}},{{1,1},{-22.87,14.17}},{{1,1},{-22.64,14.10}},{{1,1},{-22.42,14.03}},{{1,1},{-22.19,13.95}},{{1,1},{-21.96,13.88}},{{1,1},{-21.72,13.80}},{{1,1},{-21.49,13.73}},{{1,1},{-21.25,13.65}},{{1,1},{-21.01,13.57}},{{1,1},{-20.77,13.50}},{{1,1},{-20.52,13.42}},{{1,1},{-20.27,13.34}},{{1,1},{-20.03,13.26}},{{1,0},{-19.78,13.18}},{{1,0},{-19.53,13.10}},{{1,0},{-19.28,13.01}},{{1,0},{-19.03,12.90}},{{1,0},{-18.79,12.79}},{{1,0},{-18.55,12.65}},{{1,0},{-18.32,12.51}},{{1,0},{-18.10,12.35}},{{1,0},{-17.89,12.18}},{{1,0},{-17.68,12.00}},{{1,0},{-17.48,11.82}},{{1,0},{-17.29,11.62}},{{1,0},{-17.11,11.41}},{{1,0},{-16.94,11.19}},{{1,0},{-16.78,10.96}},{{1,0},{-16.63,10.72}},{{1,1},{-16.49,10.47}},{{1,1},{-16.37,10.22}},{{1,0},{-16.24,9.96}},{{1,0},{-16.12,9.71}},{{1,0},{-16.00,9.45}},{{1,1},{-15.90,9.18}},{{1,1},{-15.82,8.91}},{{1,1},{-15.73,8.63}},{{1,1},{-15.64,8.35}},{{1,1},{-15.55,8.07}},{{1,1},{-15.46,7.79}},{{1,1},{-15.37,7.51}},{{1,1},{-15.28,7.23}},{{1,1},{-15.19,6.95}},{{1,1},{-15.10,6.66}},{{1,1},{-15.01,6.38}},{{1,1},{-14.92,6.09}},{{1,1},{-14.83,5.80}},{{1,1},{-14.74,5.51}},{{1,1},{-14.65,5.22}},{{1,1},{-14.55,4.93}},{{1,0},{-14.46,4.64}},{{1,0},{-14.37,4.35}},{{1,0},{-14.29,4.05}},{{1,0},{-14.23,3.75}},{{1,0},{-14.18,3.45}},{{1,0},{-14.15,3.14}},{{1,1},{-14.14,2.82}},{{1,1},{-14.14,2.51}},{{1,1},{-14.14,2.20}},{{1,1},{-14.14,1.89}},{{1,1},{-14.14,1.57}},{{1,2},{-14.14,1.25}},{{1,2},{-14.14,0.94}},{{1,2},{-14.12,0.62}},{{1,2},{-14.09,0.30}},{{1,2},{-14.04,-0.01}},{{1,2},{-13.98,-0.32}},{{1,2},{-13.89,-0.63}},{{1,2},{-13.80,-0.94}},{{1,2},{-13.68,-1.24}},{{1,2},{-13.55,-1.53}},{{1,2},{-13.41,-1.82}},{{1,2},{-13.25,-2.09}},{{1,2},{-13.07,-2.36}},{{1,2},{-12.89,-2.61}},{{1,2},{-12.69,-2.85}},{{1,2},{-12.47,-3.08}},{{1,2},{-12.25,-3.30}},{{1,2},{-12.02,-3.51}},{{1,2},{-11.77,-3.70}},{{1,2},{-11.52,-3.88}},{{1,2},{-11.25,-4.04}},{{1,2},{-10.98,-4.19}},{{1,2},{-10.71,-4.33}},{{1,2},{-10.42,-4.45}},{{1,2},{-10.13,-4.55}},{{1,1},{-9.84,-4.64}},{{1,1},{-9.54,-4.72}},{{1,1},{-9.23,-4.79}},{{1,1},{-8.93,-4.87}},{{1,1},{-8.63,-4.94}},{{1,1},{-8.33,-5.02}},{{1,1},{-8.03,-5.09}},{{1,1},{-7.72,-5.16}},{{1,1},{-7.42,-5.24}},{{1,1},{-7.11,-5.31}},{{1,1},{-6.81,-5.39}},{{1,1},{-6.50,-5.46}},{{1,1},{-6.19,-5.54}},{{1,1},{-5.88,-5.61}},{{1,1},{-5.57,-5.69}},{{1,1},{-5.27,-5.77}},{{1,1},{-4.95,-5.85}},{{1,1},{-4.64,-5.93}},{{1,1},{-4.33,-6.00}},{{1,1},{-4.02,-6.08}},{{1,1},{-3.71,-6.16}},{{1,2},{-3.41,-6.23}},{{1,2},{-3.11,-6.31}},{{1,2},{-2.80,-6.37}},{{1,2},{-2.49,-6.41}},{{1,2},{-2.18,-6.43}},{{1,2},{-1.88,-6.44}},{{1,2},{-1.58,-6.44}},{{1,2},{-1.28,-6.42}},{{1,2},{-0.98,-6.38}},{{1,2},{-0.69,-6.34}},{{1,2},{-0.41,-6.27}},{{1,2},{-0.13,-6.20}},{{1,2},{0.14,-6.11}},{{1,2},{0.41,-6}},{{1,2},{0.67,-5.88}},{{1,2},{0.92,-5.75}},{{1,2},{1.16,-5.61}},{{1,2},{1.39,-5.46}},{{1,2},{1.61,-5.30}},{{1,2},{1.83,-5.13}},{{1,2},{2.03,-4.95}},{{1,2},{2.22,-4.76}},{{1,1},{2.41,-4.57}},{{1,1},{2.58,-4.36}},{{1,1},{2.75,-4.16}},{{1,1},{2.92,-3.95}},{{1,1},{3.09,-3.75}},{{1,1},{3.26,-3.55}},{{1,1},{3.43,-3.35}},{{1,1},{3.59,-3.15}},{{1,1},{3.76,-2.95}},{{1,1},{3.92,-2.75}},{{1,1},{4.09,-2.55}},{{1,1},{4.25,-2.36}},{{1,1},{4.41,-2.16}},{{1,1},{4.58,-1.97}},{{1,1},{4.74,-1.78}},{{1,1},{4.90,-1.59}},{{1,1},{5.06,-1.39}},{{1,1},{5.22,-1.20}},{{1,1},{5.38,-1.01}},{{1,1},{5.54,-0.82}},{{1,1},{5.70,-0.63}},{{1,1},{5.85,-0.45}},{{1,1},{6.01,-0.26}},{{1,2},{6.16,-0.07}},{{1,2},{6.32,0.12}},{{1,2},{6.47,0.31}},{{1,2},{6.61,0.51}},{{1,2},{6.73,0.71}},{{1,2},{6.85,0.93}},{{1,2},{6.96,1.14}},{{1,2},{7.05,1.36}},{{1,2},{7.14,1.58}},{{1,2},{7.21,1.81}},{{1,2},{7.28,2.04}},{{1,2},{7.34,2.27}},{{1,2},{7.38,2.51}},{{1,1},{7.41,2.74}},{{1,1},{7.43,2.98}},{{1,1},{7.45,3.22}},{{1,1},{7.47,3.46}},{{1,1},{7.49,3.69}},{{1,1},{7.51,3.93}},{{1,1},{7.53,4.16}},{{1,1},{7.55,4.39}},{{1,1},{7.57,4.63}},{{1,1},{7.59,4.86}},{{1,1},{7.61,5.10}},{{1,1},{7.62,5.33}},{{1,1},{7.64,5.57}},{{1,1},{7.66,5.80}},{{1,1},{7.68,6.04}},{{1,2},{7.70,6.27}},{{1,2},{7.72,6.50}},{{1,2},{7.73,6.73}},{{1,2},{7.73,6.96}},{{1,2},{7.72,7.20}},{{1,2},{7.70,7.43}},{{1,2},{7.67,7.66}},{{1,2},{7.63,7.88}},{{1,1},{7.58,8.11}},{{1,1},{7.52,8.33}},{{1,1},{7.46,8.55}},{{1,1},{7.41,8.78}},{{1,1},{7.35,9}},{{1,1},{7.29,9.22}},{{1,1},{7.23,9.45}},{{1,1},{7.17,9.67}},{{1,1},{7.11,9.89}},{{1,1},{7.05,10.11}},{{1,1},{7.00,10.34}},{{1,1},{6.94,10.56}},{{1,1},{6.88,10.78}},{{1,1},{6.82,11.00}},{{1,1},{6.76,11.23}},{{1,1},{6.70,11.45}},{{1,1},{6.64,11.67}},{{1,1},{6.59,11.89}},{{1,1},{6.53,12.12}},{{1,0},{6.47,12.34}},{{1,0},{6.41,12.56}},{{1,0},{6.36,12.79}},{{1,0},{6.32,13.02}},{{1,0},{6.29,13.25}},{{1,0},{6.27,13.48}},{{1,0},{6.26,13.71}},{{1,0},{6.26,13.94}},{{1,0},{6.27,14.17}},{{1,0},{6.29,14.40}},{{1,0},{6.32,14.62}},{{1,0},{6.36,14.85}},{{1,0},{6.41,15.07}},{{1,0},{6.47,15.30}},{{1,0},{6.54,15.52}},{{1,0},{6.62,15.73}},{{1,0},{6.71,15.94}},{{1,0},{6.82,16.15}},{{1,0},{6.93,16.35}},{{1,0},{7.04,16.54}},{{1,0},{7.17,16.73}},{{1,0},{7.30,16.92}},{{1,0},{7.45,17.09}},{{1,0},{7.60,17.27}},{{1,0},{7.76,17.43}},{{1,1},{7.93,17.59}},{{1,1},{8.10,17.73}},{{1,1},{8.27,17.88}},{{1,1},{8.45,18.03}},{{1,1},{8.62,18.18}},{{1,1},{8.79,18.33}},{{1,1},{8.96,18.48}},{{1,1},{9.13,18.62}},{{1,1},{9.30,18.77}},{{1,1},{9.48,18.92}},{{1,1},{9.66,19.07}},{{1,1},{9.83,19.22}},{{1,1},{10.01,19.37}},{{1,1},{10.18,19.52}},{{1,1},{10.36,19.66}},{{1,1},{10.54,19.81}},{{1,1},{10.71,19.96}},{{1,0},{10.89,20.11}},{{1,0},{11.06,20.26}},{{1,0},{11.24,20.40}},{{1,0},{11.43,20.53}},{{1,0},{11.62,20.66}},{{1,0},{11.82,20.77}},{{1,1},{12.02,20.88}},{{1,1},{12.23,20.97}},{{1,1},{12.44,21.06}},{{1,1},{12.64,21.16}},{{1,1},{12.85,21.25}},{{1,1},{13.06,21.34}},{{1,1},{13.27,21.44}},{{1,1},{13.47,21.53}},{{1,1},{13.68,21.62}},{{1,1},{13.89,21.72}},{{1,1},{14.09,21.81}},{{1,1},{14.30,21.91}},{{1,1},{14.51,22}},{{1,1},{14.71,22.09}},{{1,1},{14.92,22.19}},{{1,1},{15.13,22.28}},{{1,1},{15.34,22.38}},{{1,1},{15.54,22.47}},{{1,1},{15.75,22.56}},{{1,1},{15.96,22.66}},{{1,1},{16.16,22.75}},{{1,0},{16.37,22.84}},{{1,0},{16.58,22.94}},{{1,0},{16.79,23.02}},{{1,0},{17.00,23.10}},{{1,0},{17.22,23.16}},{{1,0},{17.44,23.22}},{{1,0},{17.66,23.27}},{{1,0},{17.89,23.30}},{{1,1},{18.11,23.33}},{{1,1},{18.34,23.34}},{{1,1},{18.57,23.36}},{{1,1},{18.79,23.38}},{{1,1},{19.02,23.39}},{{1,1},{19.25,23.41}},{{1,1},{19.47,23.42}},{{1,1},{19.70,23.44}},{{1,1},{19.93,23.45}},{{1,1},{20.15,23.47}},{{1,1},{20.38,23.48}},{{1,1},{20.61,23.50}},{{1,1},{20.83,23.52}},{{1,0},{21.06,23.53}},{{1,0},{21.29,23.55}},{{1,0},{21.51,23.55}},{{1,0},{21.74,23.55}},{{1,0},{21.96,23.54}},{{1,0},{22.19,23.52}},{{1,1},{22.41,23.48}},{{1,1},{22.64,23.44}},{{1,1},{22.86,23.40}},{{1,1},{23.08,23.36}},{{1,1},{23.30,23.31}},{{1,1},{23.53,23.27}},{{1,1},{23.75,23.23}},{{1,1},{23.97,23.18}},{{1,1},{24.20,23.14}},{{1,1},{24.42,23.10}},{{1,1},{24.64,23.05}},{{1,1},{24.86,23.01}},{{1,1},{25.09,22.97}},{{1,1},{25.31,22.93}},{{1,1},{25.53,22.88}},{{1,1},{25.75,22.84}},{{1,1},{25.98,22.80}},{{1,1},{26.20,22.75}},{{1,1},{26.42,22.71}},{{1,1},{26.64,22.67}},{{1,1},{26.87,22.62}},{{1,1},{27.09,22.58}},{{1,1},{27.31,22.54}},{{1,1},{27.54,22.50}},{{1,1},{27.76,22.45}},{{1,1},{27.98,22.41}},{{1,1},{28.20,22.37}},{{1,1},{28.43,22.32}},{{1,1},{28.65,22.28}},{{1,1},{28.87,22.24}},{{1,1},{29.09,22.20}},{{1,1},{29.32,22.15}},{{1,1},{29.54,22.11}},{{1,1},{29.76,22.07}},{{1,1},{29.98,22.02}},{{1,1},{30.21,21.98}},{{1,1},{30.43,21.94}},{{1,1},{30.65,21.89}},{{1,1},{30.88,21.85}},{{1,1},{31.10,21.81}},{{1,1},{31.32,21.77}},{{1,1},{31.54,21.72}},{{1,1},{31.77,21.68}},{{1,1},{31.99,21.64}},{{1,1},{32.21,21.59}},{{1,1},{32.44,21.55}},{{1,1},{32.67,21.51}},{{1,1},{32.89,21.46}},{{1,1},{33.12,21.42}},{{1,1},{33.36,21.38}},{{1,1},{33.59,21.34}},{{1,1},{33.82,21.29}},{{1,1},{34.05,21.25}},{{1,1},{34.28,21.21}},{{1,1},{34.52,21.16}},{{1,1},{34.75,21.12}},{{1,1},{34.98,21.08}},{{1,1},{35.22,21.03}},{{1,1},{35.46,20.98}},{{1,1},{35.70,20.94}},{{1,1},{35.93,20.89}},{{1,1},{36.17,20.84}},{{1,1},{36.41,20.80}},{{1,1},{36.66,20.75}},{{1,1},{36.90,20.70}},{{1,2},{37.14,20.66}},{{1,2},{37.39,20.61}},{{1,2},{37.63,20.57}},{{1,2},{37.88,20.55}},{{1,2},{38.14,20.54}},{{1,2},{38.39,20.54}},{{1,2},{38.64,20.55}},{{1,2},{38.90,20.57}},{{1,2},{39.15,20.60}},{{1,2},{39.41,20.65}},{{1,1},{39.66,20.71}},{{1,1},{39.91,20.78}},{{1,1},{40.16,20.85}},{{1,1},{40.41,20.92}},{{1,1},{40.66,20.99}},{{1,1},{40.91,21.06}},{{1,1},{41.16,21.13}},{{1,1},{41.41,21.20}},{{1,1},{41.66,21.27}},{{1,1},{41.91,21.34}},{{1,1},{42.16,21.41}},{{1,1},{42.41,21.48}},{{1,1},{42.66,21.55}},{{1,1},{42.91,21.62}},{{1,1},{43.16,21.69}},{{1,1},{43.41,21.76}},{{1,1},{43.66,21.83}},{{1,1},{43.91,21.90}},{{1,1},{44.15,21.97}},{{1,1},{44.40,22.04}},{{1,1},{44.64,22.11}},{{1,1},{44.89,22.18}},{{1,1},{45.13,22.25}},{{1,1},{45.38,22.32}},{{1,1},{45.62,22.39}},{{1,1},{45.86,22.46}},{{1,1},{46.10,22.53}},{{1,1},{46.34,22.59}},{{1,1},{46.57,22.66}},{{1,1},{46.81,22.73}},{{1,1},{47.05,22.79}},{{1,1},{47.29,22.86}},{{1,1},{47.52,22.93}},{{1,1},{47.75,22.99}},{{1,1},{47.99,23.06}},{{1,1},{48.22,23.12}},{{1,1},{48.45,23.19}},{{1,1},{48.68,23.26}},{{1,1},{48.91,23.32}},{{1,1},{49.14,23.39}},{{1,1},{49.38,23.46}},{{1,1},{49.61,23.52}},{{1,1},{49.84,23.59}},{{1,1},{50.07,23.66}},{{1,1},{50.29,23.72}},{{1,1},{50.52,23.79}}},

    {{{0,1},{-28.57,17.12}},{{0,1},{-28.57,17.12}},{{0,1},{-28.57,17.12}},{{0,1},{-28.57,17.12}},{{0,1},{-28.57,17.12}},{{0,1},{-28.57,17.12}},{{0,1},{-28.57,17.12}},{{1,1},{-28.57,17.12}},{{1,1},{-28.53,17.12}},{{1,1},{-28.47,17.12}},{{1,1},{-28.39,17.12}},{{1,1},{-28.30,17.12}},{{1,1},{-28.20,17.12}},{{1,1},{-28.09,17.12}},{{1,1},{-27.98,17.12}},{{1,1},{-27.85,17.12}},{{1,1},{-27.72,17.12}},{{1,1},{-27.58,17.12}},{{1,1},{-27.44,17.12}},{{1,1},{-27.29,17.12}},{{1,1},{-27.13,17.12}},{{1,1},{-26.97,17.12}},{{1,1},{-26.80,17.12}},{{1,1},{-26.63,17.12}},{{1,1},{-26.46,17.12}},{{1,1},{-26.28,17.12}},{{1,1},{-26.09,17.12}},{{1,1},{-25.91,17.12}},{{1,1},{-25.71,17.12}},{{1,1},{-25.52,17.12}},{{1,1},{-25.32,17.12}},{{1,1},{-25.12,17.12}},{{1,1},{-24.91,17.12}},{{1,1},{-24.70,17.12}},{{1,1},{-24.48,17.12}},{{1,1},{-24.27,17.12}},{{1,0},{-24.05,17.12}},{{1,0},{-23.82,17.12}},{{1,0},{-23.60,17.11}},{{1,0},{-23.37,17.09}},{{1,0},{-23.14,17.06}},{{1,0},{-22.91,17.02}},{{1,0},{-22.68,16.97}},{{1,0},{-22.45,16.91}},{{1,0},{-22.22,16.83}},{{1,0},{-21.99,16.75}},{{1,0},{-21.77,16.65}},{{1,0},{-21.54,16.54}},{{1,0},{-21.32,16.42}},{{1,1},{-21.11,16.29}},{{1,1},{-20.90,16.14}},{{1,1},{-20.69,16.00}},{{1,1},{-20.48,15.85}},{{1,1},{-20.26,15.71}},{{1,1},{-20.05,15.56}},{{1,1},{-19.83,15.41}},{{1,1},{-19.61,15.26}},{{1,1},{-19.39,15.11}},{{1,1},{-19.18,14.96}},{{1,1},{-18.96,14.82}},{{1,1},{-18.74,14.67}},{{1,1},{-18.52,14.52}},{{1,1},{-18.30,14.37}},{{1,1},{-18.08,14.22}},{{1,0},{-17.86,14.07}},{{1,0},{-17.64,13.93}},{{1,0},{-17.43,13.77}},{{1,0},{-17.23,13.59}},{{1,0},{-17.04,13.41}},{{1,0},{-16.85,13.23}},{{1,0},{-16.68,13.03}},{{1,0},{-16.51,12.82}},{{1,0},{-16.36,12.61}},{{1,0},{-16.21,12.39}},{{1,0},{-16.08,12.16}},{{1,0},{-15.96,11.93}},{{1,0},{-15.85,11.70}},{{1,0},{-15.75,11.45}},{{1,0},{-15.67,11.21}},{{1,0},{-15.59,10.96}},{{1,0},{-15.53,10.70}},{{1,0},{-15.48,10.45}},{{1,0},{-15.45,10.19}},{{1,0},{-15.43,9.93}},{{1,1},{-15.41,9.66}},{{1,1},{-15.41,9.40}},{{1,1},{-15.41,9.13}},{{1,1},{-15.41,8.87}},{{1,1},{-15.41,8.60}},{{1,1},{-15.41,8.33}},{{1,1},{-15.41,8.06}},{{1,1},{-15.41,7.79}},{{1,1},{-15.41,7.51}},{{1,1},{-15.41,7.24}},{{1,1},{-15.41,6.96}},{{1,1},{-15.41,6.68}},{{1,1},{-15.41,6.40}},{{1,1},{-15.41,6.12}},{{1,1},{-15.41,5.84}},{{1,1},{-15.41,5.55}},{{1,1},{-15.41,5.27}},{{1,1},{-15.41,4.98}},{{1,1},{-15.41,4.70}},{{1,1},{-15.41,4.41}},{{1,1},{-15.41,4.12}},{{1,1},{-15.41,3.82}},{{1,1},{-15.41,3.53}},{{1,1},{-15.41,3.24}},{{1,2},{-15.41,2.94}},{{1,2},{-15.41,2.64}},{{1,2},{-15.40,2.35}},{{1,2},{-15.38,2.05}},{{1,2},{-15.33,1.75}},{{1,2},{-15.27,1.46}},{{1,2},{-15.20,1.16}},{{1,2},{-15.11,0.88}},{{1,1},{-15.00,0.59}},{{1,1},{-14.88,0.31}},{{1,1},{-14.76,0.03}},{{1,1},{-14.64,-0.25}},{{1,1},{-14.52,-0.54}},{{1,1},{-14.39,-0.82}},{{1,2},{-14.27,-1.10}},{{1,2},{-14.14,-1.39}},{{1,2},{-14.01,-1.66}},{{1,2},{-13.86,-1.93}},{{1,2},{-13.69,-2.19}},{{1,2},{-13.51,-2.44}},{{1,2},{-13.32,-2.68}},{{1,2},{-13.11,-2.91}},{{1,2},{-12.90,-3.12}},{{1,1},{-12.68,-3.32}},{{1,1},{-12.44,-3.52}},{{1,1},{-12.21,-3.71}},{{1,1},{-11.98,-3.89}},{{1,1},{-11.75,-4.08}},{{1,1},{-11.52,-4.27}},{{1,2},{-11.29,-4.46}},{{1,2},{-11.05,-4.64}},{{1,2},{-10.82,-4.82}},{{1,2},{-10.57,-4.98}},{{1,2},{-10.32,-5.13}},{{1,2},{-10.05,-5.26}},{{1,2},{-9.79,-5.38}},{{1,2},{-9.52,-5.49}},{{1,2},{-9.24,-5.58}},{{1,2},{-8.96,-5.66}},{{1,1},{-8.67,-5.72}},{{1,1},{-8.38,-5.77}},{{1,1},{-8.09,-5.82}},{{1,1},{-7.80,-5.87}},{{1,1},{-7.51,-5.92}},{{1,1},{-7.22,-5.97}},{{1,1},{-6.93,-6.02}},{{1,1},{-6.63,-6.07}},{{1,1},{-6.33,-6.12}},{{1,1},{-6.04,-6.18}},{{1,1},{-5.74,-6.23}},{{1,1},{-5.44,-6.28}},{{1,1},{-5.14,-6.33}},{{1,1},{-4.84,-6.38}},{{1,1},{-4.54,-6.43}},{{1,1},{-4.23,-6.48}},{{1,1},{-3.93,-6.53}},{{1,1},{-3.63,-6.58}},{{1,1},{-3.33,-6.63}},{{1,1},{-3.03,-6.68}},{{1,1},{-2.73,-6.73}},{{1,1},{-2.44,-6.79}},{{1,1},{-2.14,-6.84}},{{1,1},{-1.85,-6.89}},{{1,1},{-1.56,-6.93}},{{1,2},{-1.28,-6.98}},{{1,2},{-0.99,-7.03}},{{1,2},{-0.71,-7.06}},{{1,2},{-0.42,-7.08}},{{1,2},{-0.14,-7.08}},{{1,2},{0.14,-7.07}},{{1,2},{0.42,-7.05}},{{1,2},{0.69,-7.02}},{{1,2},{0.96,-6.97}},{{1,2},{1.23,-6.91}},{{1,2},{1.49,-6.84}},{{1,2},{1.75,-6.75}},{{1,2},{2.00,-6.66}},{{1,2},{2.24,-6.55}},{{1,2},{2.48,-6.43}},{{1,2},{2.71,-6.29}},{{1,2},{2.93,-6.15}},{{1,2},{3.15,-6.00}},{{1,2},{3.36,-5.83}},{{1,2},{3.55,-5.66}},{{1,2},{3.75,-5.47}},{{1,2},{3.93,-5.28}},{{1,2},{4.10,-5.08}},{{1,1},{4.26,-4.88}},{{1,1},{4.41,-4.66}},{{1,1},{4.55,-4.45}},{{1,1},{4.70,-4.23}},{{1,1},{4.85,-4.02}},{{1,1},{5,-3.80}},{{1,1},{5.15,-3.59}},{{1,1},{5.29,-3.38}},{{1,1},{5.44,-3.17}},{{1,1},{5.58,-2.96}},{{1,1},{5.73,-2.76}},{{1,1},{5.87,-2.55}},{{1,1},{6.02,-2.34}},{{1,1},{6.16,-2.14}},{{1,1},{6.30,-1.93}},{{1,1},{6.44,-1.73}},{{1,1},{6.58,-1.53}},{{1,1},{6.72,-1.32}},{{1,2},{6.86,-1.12}},{{1,2},{7,-0.92}},{{1,2},{7.13,-0.71}},{{1,2},{7.25,-0.50}},{{1,2},{7.36,-0.28}},{{1,2},{7.46,-0.06}},{{1,2},{7.55,0.17}},{{1,2},{7.62,0.40}},{{1,2},{7.69,0.63}},{{1,2},{7.75,0.87}},{{1,2},{7.79,1.11}},{{1,2},{7.82,1.35}},{{1,2},{7.84,1.59}},{{1,2},{7.85,1.84}},{{1,2},{7.85,2.09}},{{1,2},{7.84,2.33}},{{1,2},{7.82,2.57}},{{1,2},{7.79,2.82}},{{1,2},{7.75,3.05}},{{1,2},{7.69,3.29}},{{1,2},{7.62,3.53}},{{1,2},{7.55,3.76}},{{1,1},{7.46,3.98}},{{1,1},{7.36,4.20}},{{1,1},{7.27,4.42}},{{1,1},{7.17,4.64}},{{1,1},{7.07,4.86}},{{1,1},{6.97,5.08}},{{1,1},{6.88,5.30}},{{1,1},{6.78,5.52}},{{1,1},{6.68,5.73}},{{1,1},{6.59,5.95}},{{1,1},{6.49,6.16}},{{1,1},{6.40,6.38}},{{1,1},{6.30,6.59}},{{1,1},{6.21,6.80}},{{1,0},{6.12,7.02}},{{1,0},{6.02,7.23}},{{1,0},{5.94,7.45}},{{1,0},{5.86,7.68}},{{1,0},{5.80,7.90}},{{1,0},{5.75,8.13}},{{1,0},{5.70,8.36}},{{1,0},{5.67,8.60}},{{1,0},{5.65,8.83}},{{1,0},{5.64,9.07}},{{1,0},{5.64,9.31}},{{1,0},{5.64,9.55}},{{1,0},{5.66,9.79}},{{1,0},{5.70,10.03}},{{1,0},{5.74,10.27}},{{1,0},{5.79,10.50}},{{1,0},{5.86,10.74}},{{1,0},{5.93,10.98}},{{1,1},{6.02,11.21}},{{1,1},{6.12,11.43}},{{1,1},{6.21,11.66}},{{1,1},{6.31,11.89}},{{1,1},{6.41,12.11}},{{1,1},{6.51,12.34}},{{1,1},{6.61,12.57}},{{1,1},{6.70,12.79}},{{1,1},{6.80,13.02}},{{1,1},{6.90,13.24}},{{1,1},{7.00,13.46}},{{1,1},{7.09,13.69}},{{1,1},{7.19,13.91}},{{1,1},{7.29,14.13}},{{1,1},{7.39,14.36}},{{1,1},{7.48,14.58}},{{1,1},{7.58,14.80}},{{1,1},{7.67,15.02}},{{1,1},{7.77,15.23}},{{1,1},{7.86,15.45}},{{1,1},{7.95,15.67}},{{1,1},{8.05,15.89}},{{1,1},{8.14,16.11}},{{1,1},{8.23,16.33}},{{1,1},{8.33,16.54}},{{1,1},{8.42,16.76}},{{1,1},{8.52,16.97}},{{1,1},{8.61,17.19}},{{1,1},{8.70,17.40}},{{1,1},{8.80,17.62}},{{1,1},{8.89,17.83}},{{1,1},{8.98,18.05}},{{1,0},{9.08,18.26}},{{1,0},{9.17,18.48}},{{1,0},{9.27,18.69}},{{1,0},{9.39,18.89}},{{1,0},{9.51,19.09}},{{1,0},{9.64,19.29}},{{1,0},{9.78,19.47}},{{1,0},{9.93,19.65}},{{1,0},{10.08,19.82}},{{1,0},{10.25,19.99}},{{1,0},{10.42,20.15}},{{1,0},{10.60,20.30}},{{1,0},{10.78,20.44}},{{1,0},{10.97,20.57}},{{1,0},{11.17,20.70}},{{1,0},{11.37,20.81}},{{1,0},{11.58,20.91}},{{1,0},{11.79,21.01}},{{1,0},{12.00,21.09}},{{1,0},{12.22,21.17}},{{1,0},{12.45,21.23}},{{1,1},{12.67,21.29}},{{1,1},{12.89,21.33}},{{1,1},{13.12,21.38}},{{1,1},{13.35,21.42}},{{1,1},{13.57,21.46}},{{1,1},{13.80,21.50}},{{1,1},{14.03,21.55}},{{1,1},{14.25,21.59}},{{1,1},{14.48,21.63}},{{1,1},{14.71,21.68}},{{1,1},{14.93,21.72}},{{1,1},{15.16,21.76}},{{1,1},{15.39,21.80}},{{1,1},{15.61,21.85}},{{1,1},{15.83,21.89}},{{1,1},{16.05,21.93}},{{1,1},{16.28,21.98}},{{1,1},{16.50,22.02}},{{1,1},{16.72,22.06}},{{1,1},{16.95,22.11}},{{1,1},{17.17,22.15}},{{1,1},{17.39,22.19}},{{1,1},{17.61,22.23}},{{1,1},{17.84,22.28}},{{1,1},{18.06,22.32}},{{1,1},{18.28,22.36}},{{1,1},{18.50,22.41}},{{1,1},{18.73,22.45}},{{1,1},{18.95,22.49}},{{1,1},{19.17,22.54}},{{1,1},{19.39,22.58}},{{1,1},{19.62,22.62}},{{1,1},{19.84,22.66}},{{1,0},{20.06,22.71}},{{1,0},{20.29,22.75}},{{1,0},{20.51,22.78}},{{1,0},{20.74,22.80}},{{1,0},{20.96,22.82}},{{1,0},{21.19,22.82}},{{1,1},{21.42,22.82}},{{1,1},{21.64,22.80}},{{1,1},{21.87,22.79}},{{1,1},{22.10,22.77}},{{1,1},{22.32,22.75}},{{1,1},{22.55,22.74}},{{1,1},{22.78,22.72}},{{1,1},{23.00,22.71}},{{1,1},{23.23,22.69}},{{1,1},{23.46,22.68}},{{1,1},{23.68,22.66}},{{1,1},{23.91,22.64}},{{1,1},{24.14,22.63}},{{1,1},{24.36,22.61}},{{1,1},{24.59,22.60}},{{1,1},{24.82,22.58}},{{1,1},{25.04,22.57}},{{1,1},{25.27,22.55}},{{1,1},{25.50,22.54}},{{1,1},{25.72,22.52}},{{1,1},{25.95,22.50}},{{1,1},{26.18,22.49}},{{1,1},{26.40,22.47}},{{1,1},{26.63,22.46}},{{1,1},{26.86,22.44}},{{1,1},{27.08,22.43}},{{1,1},{27.31,22.41}},{{1,1},{27.54,22.39}},{{1,1},{27.76,22.38}},{{1,1},{27.99,22.36}},{{1,1},{28.21,22.35}},{{1,1},{28.44,22.33}},{{1,1},{28.67,22.32}},{{1,1},{28.89,22.30}},{{1,1},{29.12,22.29}},{{1,1},{29.35,22.27}},{{1,1},{29.57,22.25}},{{1,1},{29.80,22.24}},{{1,1},{30.03,22.22}},{{1,1},{30.25,22.21}},{{1,1},{30.48,22.19}},{{1,1},{30.71,22.18}},{{1,1},{30.93,22.16}},{{1,1},{31.16,22.14}},{{1,1},{31.39,22.13}},{{1,1},{31.61,22.11}},{{1,1},{31.84,22.10}},{{1,1},{32.07,22.08}},{{1,1},{32.29,22.07}},{{1,1},{32.52,22.05}},{{1,1},{32.75,22.04}},{{1,1},{32.97,22.02}},{{1,2},{33.20,22.00}},{{1,2},{33.43,21.99}},{{1,1},{33.65,21.98}},{{1,1},{33.88,21.98}},{{1,1},{34.11,21.98}},{{1,1},{34.33,21.98}},{{1,1},{34.56,21.98}},{{1,1},{34.79,21.98}},{{1,1},{35.01,21.98}},{{1,1},{35.24,21.98}},{{1,1},{35.46,21.98}},{{1,1},{35.69,21.98}},{{1,1},{35.92,21.98}},{{1,1},{36.14,21.98}},{{1,1},{36.37,21.98}},{{1,1},{36.60,21.98}},{{1,1},{36.82,21.98}},{{1,1},{37.05,21.98}},{{1,1},{37.28,21.98}},{{1,1},{37.50,21.98}},{{1,1},{37.73,21.98}},{{1,1},{37.96,21.98}},{{1,1},{38.18,21.98}},{{1,1},{38.41,21.98}},{{1,1},{38.64,21.98}},{{1,1},{38.86,21.98}},{{1,1},{39.09,21.98}},{{1,1},{39.32,21.98}},{{1,1},{39.54,21.98}},{{1,1},{39.77,21.98}},{{1,1},{40.00,21.98}},{{1,1},{40.22,21.98}},{{1,1},{40.45,21.98}},{{1,1},{40.68,21.98}},{{1,1},{40.90,21.98}},{{1,1},{41.13,21.98}},{{1,1},{41.36,21.98}},{{1,1},{41.58,21.98}}},

    {{{0,1},{-28.61,19.82}},{{0,1},{-28.61,19.82}},{{0,1},{-28.61,19.82}},{{0,1},{-28.61,19.82}},{{0,1},{-28.61,19.82}},{{0,1},{-28.61,19.82}},{{0,1},{-28.61,19.82}},{{1,2},{-28.61,19.82}},{{1,2},{-28.56,19.82}},{{1,2},{-28.50,19.82}},{{1,2},{-28.42,19.82}},{{1,2},{-28.33,19.83}},{{1,2},{-28.23,19.84}},{{1,2},{-28.13,19.85}},{{1,2},{-28.02,19.86}},{{1,1},{-27.89,19.89}},{{1,1},{-27.77,19.91}},{{1,1},{-27.63,19.95}},{{1,1},{-27.49,19.98}},{{1,1},{-27.35,20.01}},{{1,1},{-27.20,20.04}},{{1,1},{-27.04,20.08}},{{1,1},{-26.88,20.11}},{{1,1},{-26.71,20.15}},{{1,1},{-26.54,20.19}},{{1,1},{-26.36,20.23}},{{1,1},{-26.18,20.27}},{{1,1},{-26,20.30}},{{1,1},{-25.81,20.35}},{{1,1},{-25.62,20.39}},{{1,0},{-25.43,20.43}},{{1,0},{-25.23,20.48}},{{1,0},{-25.02,20.51}},{{1,0},{-24.82,20.54}},{{1,0},{-24.61,20.56}},{{1,0},{-24.39,20.57}},{{1,0},{-24.17,20.57}},{{1,0},{-23.95,20.56}},{{1,0},{-23.72,20.54}},{{1,0},{-23.50,20.52}},{{1,0},{-23.27,20.48}},{{1,0},{-23.04,20.43}},{{1,0},{-22.81,20.37}},{{1,0},{-22.59,20.30}},{{1,0},{-22.36,20.22}},{{1,0},{-22.14,20.12}},{{1,0},{-21.91,20.02}},{{1,1},{-21.70,19.90}},{{1,1},{-21.48,19.77}},{{1,0},{-21.27,19.64}},{{1,0},{-21.05,19.52}},{{1,0},{-20.84,19.38}},{{1,0},{-20.63,19.22}},{{1,0},{-20.43,19.06}},{{1,0},{-20.24,18.89}},{{1,0},{-20.05,18.71}},{{1,0},{-19.88,18.52}},{{1,0},{-19.71,18.32}},{{1,0},{-19.56,18.11}},{{1,1},{-19.41,17.90}},{{1,1},{-19.28,17.68}},{{0,1},{-19.15,17.46}},{{0,1},{-19.02,17.25}},{{1,1},{-18.89,17.04}},{{1,1},{-18.76,16.83}},{{1,1},{-18.63,16.62}},{{1,1},{-18.50,16.41}},{{1,1},{-18.38,16.20}},{{1,1},{-18.25,16.00}},{{1,1},{-18.12,15.79}},{{1,1},{-17.99,15.58}},{{1,1},{-17.87,15.38}},{{1,1},{-17.74,15.17}},{{1,1},{-17.62,14.96}},{{1,1},{-17.49,14.75}},{{1,1},{-17.37,14.55}},{{1,1},{-17.24,14.34}},{{1,1},{-17.12,14.13}},{{1,1},{-16.99,13.93}},{{1,1},{-16.87,13.72}},{{1,1},{-16.74,13.51}},{{1,1},{-16.62,13.30}},{{1,1},{-16.49,13.10}},{{1,1},{-16.37,12.89}},{{1,1},{-16.24,12.68}},{{1,1},{-16.12,12.48}},{{1,1},{-15.99,12.27}},{{1,1},{-15.87,12.06}},{{1,0},{-15.74,11.86}},{{1,0},{-15.62,11.65}},{{0,0},{-15.50,11.44}},{{0,0},{-15.39,11.22}},{{0,0},{-15.30,11.01}},{{0,0},{-15.22,10.79}},{{0,0},{-15.15,10.58}},{{0,0},{-15.09,10.36}},{{0,0},{-15.04,10.15}},{{0,0},{-15.00,9.93}},{{0,0},{-14.98,9.72}},{{0,1},{-14.96,9.51}},{{0,1},{-14.95,9.30}},{{0,1},{-14.94,9.09}},{{0,1},{-14.93,8.89}},{{0,1},{-14.93,8.69}},{{0,1},{-14.92,8.49}},{{0,1},{-14.91,8.29}},{{0,1},{-14.90,8.09}},{{0,1},{-14.89,7.90}},{{0,1},{-14.89,7.71}},{{0,1},{-14.88,7.52}},{{0,1},{-14.87,7.33}},{{0,1},{-14.86,7.14}},{{0,1},{-14.86,6.95}},{{0,1},{-14.85,6.77}},{{0,1},{-14.84,6.59}},{{0,1},{-14.83,6.40}},{{0,1},{-14.82,6.22}},{{0,1},{-14.82,6.04}},{{0,1},{-14.81,5.87}},{{0,1},{-14.80,5.69}},{{0,2},{-14.79,5.52}},{{0,2},{-14.79,5.34}},{{0,2},{-14.77,5.17}},{{0,2},{-14.75,5.00}},{{0,2},{-14.72,4.84}},{{0,2},{-14.69,4.67}},{{0,2},{-14.65,4.51}},{{0,2},{-14.60,4.35}},{{0,1},{-14.55,4.20}},{{0,1},{-14.50,4.04}},{{0,1},{-14.44,3.89}},{{0,1},{-14.39,3.74}},{{0,2},{-14.33,3.59}},{{0,2},{-14.28,3.45}},{{0,2},{-14.22,3.30}},{{0,2},{-14.15,3.16}},{{0,2},{-14.08,3.02}},{{0,2},{-14.01,2.89}},{{0,2},{-13.93,2.76}},{{0,2},{-13.85,2.64}},{{0,1},{-13.76,2.52}},{{0,1},{-13.67,2.40}},{{0,1},{-13.58,2.29}},{{0,1},{-13.49,2.17}},{{0,1},{-13.41,2.06}},{{0,2},{-13.32,1.95}},{{0,2},{-13.23,1.83}},{{0,2},{-13.14,1.73}},{{0,2},{-13.05,1.62}},{{0,2},{-12.96,1.53}},{{0,2},{-12.86,1.43}},{{0,2},{-12.76,1.34}},{{0,2},{-12.66,1.26}},{{0,2},{-12.55,1.18}},{{0,2},{-12.45,1.10}},{{0,2},{-12.34,1.02}},{{0,2},{-12.23,0.96}},{{0,2},{-12.11,0.89}},{{0,2},{-12,0.84}},{{0,2},{-11.89,0.78}},{{0,2},{-11.77,0.73}},{{0,2},{-11.66,0.68}},{{0,2},{-11.54,0.64}},{{0,2},{-11.42,0.60}},{{0,2},{-11.30,0.57}},{{0,2},{-11.19,0.54}},{{0,2},{-11.07,0.52}},{{0,2},{-10.95,0.50}},{{0,2},{-10.84,0.48}},{{0,2},{-10.72,0.47}},{{0,2},{-10.60,0.46}},{{0,2},{-10.48,0.46}},{{0,2},{-10.37,0.46}},{{0,2},{-10.26,0.46}},{{0,2},{-10.14,0.46}},{{0,2},{-10.03,0.47}},{{0,2},{-9.92,0.48}},{{0,2},{-9.81,0.49}},{{0,2},{-9.70,0.50}},{{0,2},{-9.60,0.52}},{{0,2},{-9.49,0.55}},{{0,2},{-9.39,0.57}},{{0,1},{-9.29,0.60}},{{0,1},{-9.19,0.63}},{{0,1},{-9.09,0.66}},{{0,1},{-9.00,0.70}},{{0,1},{-8.90,0.73}},{{0,1},{-8.80,0.76}},{{0,1},{-8.71,0.79}},{{0,1},{-8.61,0.82}},{{0,1},{-8.52,0.85}},{{0,0},{-8.43,0.88}},{{0,0},{-8.33,0.91}},{{0,0},{-8.24,0.94}},{{0,0},{-8.14,0.96}},{{0,0},{-8.05,0.98}},{{0,0},{-7.96,1.00}},{{0,0},{-7.86,1.01}},{{0,0},{-7.77,1.02}},{{0,0},{-7.68,1.03}},{{0,0},{-7.59,1.04}},{{0,0},{-7.50,1.04}},{{0,0},{-7.41,1.04}},{{0,0},{-7.32,1.04}},{{0,0},{-7.23,1.04}},{{0,0},{-7.15,1.04}},{{0,0},{-7.06,1.04}},{{0,1},{-6.98,1.03}},{{0,1},{-6.89,1.02}},{{0,1},{-6.81,1.00}},{{0,1},{-6.73,0.99}},{{0,0},{-6.64,0.98}},{{0,1},{-6.56,0.97}},{{0,1},{-6.48,0.96}},{{0,1},{-6.40,0.95}},{{0,1},{-6.32,0.93}},{{0,1},{-6.25,0.92}},{{0,1},{-6.17,0.91}},{{0,1},{-6.09,0.90}},{{0,1},{-6.01,0.89}},{{0,1},{-5.94,0.88}},{{0,1},{-5.86,0.86}},{{0,1},{-5.79,0.85}},{{0,1},{-5.71,0.84}},{{0,1},{-5.64,0.83}},{{0,1},{-5.57,0.82}},{{0,1},{-5.49,0.80}},{{0,1},{-5.42,0.79}},{{0,2},{-5.35,0.78}},{{0,2},{-5.28,0.77}},{{0,2},{-5.21,0.76}},{{0,2},{-5.14,0.75}},{{0,2},{-5.07,0.75}},{{0,2},{-5,0.75}},{{0,2},{-4.93,0.75}},{{1,1},{-4.86,0.75}},{{1,1},{-4.78,0.75}},{{1,1},{-4.69,0.75}},{{1,1},{-4.59,0.75}},{{1,1},{-4.47,0.75}},{{1,1},{-4.35,0.75}},{{1,1},{-4.22,0.75}},{{1,1},{-4.09,0.75}},{{0,1},{-3.95,0.75}},{{0,1},{-3.81,0.75}},{{0,1},{-3.67,0.75}},{{0,1},{-3.54,0.75}},{{0,1},{-3.40,0.75}},{{0,1},{-3.26,0.75}},{{0,1},{-3.13,0.75}},{{0,1},{-3.00,0.75}},{{0,1},{-2.86,0.75}},{{0,1},{-2.73,0.75}},{{0,1},{-2.61,0.75}},{{0,1},{-2.48,0.75}},{{0,1},{-2.35,0.75}},{{0,1},{-2.22,0.75}},{{1,1},{-2.10,0.75}},{{1,1},{-1.96,0.75}},{{1,1},{-1.82,0.75}},{{1,1},{-1.68,0.75}},{{1,1},{-1.53,0.75}},{{1,1},{-1.37,0.75}},{{1,1},{-1.21,0.75}},{{0,1},{-1.04,0.75}},{{0,1},{-0.88,0.75}},{{0,1},{-0.71,0.75}},{{0,1},{-0.55,0.75}},{{0,1},{-0.39,0.75}},{{0,1},{-0.23,0.75}},{{0,1},{-0.07,0.75}},{{0,1},{0.09,0.75}},{{0,1},{0.24,0.75}},{{0,1},{0.40,0.75}},{{0,1},{0.55,0.75}},{{0,1},{0.70,0.75}},{{0,1},{0.86,0.75}},{{0,1},{1.00,0.75}},{{0,2},{1.15,0.75}},{{0,2},{1.30,0.75}},{{0,2},{1.45,0.75}},{{0,2},{1.59,0.76}},{{0,2},{1.74,0.78}},{{0,2},{1.88,0.80}},{{0,2},{2.02,0.82}},{{0,2},{2.16,0.85}},{{0,2},{2.29,0.89}},{{0,2},{2.43,0.93}},{{0,2},{2.55,0.97}},{{0,2},{2.68,1.02}},{{0,2},{2.81,1.07}},{{0,2},{2.93,1.12}},{{0,2},{3.05,1.18}},{{0,2},{3.16,1.24}},{{0,2},{3.27,1.31}},{{0,2},{3.38,1.38}},{{0,2},{3.48,1.45}},{{0,2},{3.57,1.52}},{{0,2},{3.67,1.59}},{{0,2},{3.76,1.67}},{{0,2},{3.84,1.75}},{{0,2},{3.93,1.83}},{{0,2},{4.00,1.91}},{{0,2},{4.08,2.00}},{{0,2},{4.15,2.08}},{{0,2},{4.21,2.17}},{{0,2},{4.28,2.25}},{{0,2},{4.34,2.34}},{{0,2},{4.39,2.43}},{{0,2},{4.44,2.51}},{{0,2},{4.49,2.60}},{{0,2},{4.54,2.68}},{{0,2},{4.58,2.77}},{{0,2},{4.62,2.86}},{{1,2},{4.65,2.94}},{{1,2},{4.69,3.04}},{{1,2},{4.72,3.14}},{{1,2},{4.76,3.26}},{{1,2},{4.79,3.38}},{{1,2},{4.82,3.51}},{{1,1},{4.85,3.64}},{{1,1},{4.87,3.78}},{{1,1},{4.89,3.93}},{{1,1},{4.92,4.08}},{{1,1},{4.94,4.23}},{{1,1},{4.97,4.39}},{{1,1},{5.00,4.56}},{{1,1},{5.02,4.73}},{{1,1},{5.05,4.90}},{{1,1},{5.08,5.07}},{{1,1},{5.11,5.25}},{{1,1},{5.13,5.44}},{{1,1},{5.16,5.62}},{{1,1},{5.20,5.81}},{{1,1},{5.23,6.00}},{{1,1},{5.26,6.20}},{{1,1},{5.29,6.39}},{{1,1},{5.32,6.59}},{{1,1},{5.35,6.79}},{{1,2},{5.38,7.00}},{{1,2},{5.41,7.20}},{{1,2},{5.44,7.41}},{{1,2},{5.45,7.62}},{{1,2},{5.46,7.83}},{{1,2},{5.46,8.04}},{{1,1},{5.45,8.26}},{{1,1},{5.43,8.47}},{{1,1},{5.41,8.69}},{{1,1},{5.39,8.91}},{{1,1},{5.38,9.13}},{{1,1},{5.36,9.36}},{{1,1},{5.34,9.58}},{{1,1},{5.32,9.81}},{{1,1},{5.30,10.04}},{{1,1},{5.28,10.27}},{{1,1},{5.26,10.50}},{{1,1},{5.24,10.73}},{{1,1},{5.22,10.96}},{{1,1},{5.20,11.20}},{{1,1},{5.18,11.44}},{{1,1},{5.16,11.68}},{{1,1},{5.14,11.93}},{{1,1},{5.12,12.17}},{{1,1},{5.10,12.42}},{{1,1},{5.08,12.66}},{{1,1},{5.06,12.91}},{{1,0},{5.04,13.16}},{{1,0},{5.02,13.40}},{{1,0},{5.02,13.65}},{{1,0},{5.02,13.89}},{{1,0},{5.03,14.14}},{{1,0},{5.05,14.39}},{{1,0},{5.08,14.63}},{{1,0},{5.12,14.87}},{{1,0},{5.18,15.11}},{{1,0},{5.25,15.34}},{{1,0},{5.32,15.57}},{{1,0},{5.41,15.80}},{{1,0},{5.51,16.02}},{{1,0},{5.62,16.24}},{{1,0},{5.74,16.45}},{{1,0},{5.87,16.65}},{{1,0},{6.00,16.85}},{{1,0},{6.15,17.04}},{{1,0},{6.31,17.23}},{{1,0},{6.47,17.40}},{{1,0},{6.64,17.57}},{{1,0},{6.82,17.73}},{{1,0},{7.01,17.88}},{{1,0},{7.20,18.02}},{{1,0},{7.40,18.15}},{{1,0},{7.60,18.28}},{{1,0},{7.81,18.39}},{{1,1},{8.03,18.50}},{{1,1},{8.25,18.59}},{{1,1},{8.46,18.68}},{{1,1},{8.69,18.78}},{{1,1},{8.91,18.87}},{{1,1},{9.13,18.96}},{{1,1},{9.36,19.06}},{{1,1},{9.58,19.15}},{{1,1},{9.80,19.25}},{{1,1},{10.02,19.34}},{{1,1},{10.23,19.43}},{{1,1},{10.45,19.53}},{{1,1},{10.67,19.62}},{{1,1},{10.89,19.71}},{{1,1},{11.11,19.81}},{{1,1},{11.33,19.90}},{{1,1},{11.55,20.00}},{{1,1},{11.77,20.09}},{{1,1},{11.98,20.18}},{{1,1},{12.20,20.27}},{{1,1},{12.41,20.36}},{{1,1},{12.62,20.45}},{{1,1},{12.84,20.54}},{{1,1},{13.05,20.63}},{{1,1},{13.27,20.72}},{{1,1},{13.48,20.81}},{{1,1},{13.70,20.90}},{{1,1},{13.91,20.99}},{{1,1},{14.13,21.08}},{{1,1},{14.34,21.17}},{{1,1},{14.56,21.26}},{{1,1},{14.77,21.35}},{{1,1},{14.98,21.44}},{{1,1},{15.20,21.53}},{{1,0},{15.41,21.62}},{{1,0},{15.62,21.71}},{{1,0},{15.83,21.79}},{{1,0},{16.05,21.86}},{{1,0},{16.27,21.92}},{{1,0},{16.50,21.97}},{{1,0},{16.72,22.01}},{{1,0},{16.95,22.04}},{{1,0},{17.18,22.05}},{{1,0},{17.41,22.06}},{{1,0},{17.64,22.06}},{{1,1},{17.87,22.05}},{{1,1},{18.10,22.04}},{{1,1},{18.32,22.02}},{{1,1},{18.55,22.00}},{{1,1},{18.78,21.98}},{{1,1},{19.00,21.96}},{{1,1},{19.23,21.94}},{{1,1},{19.46,21.92}},{{1,1},{19.68,21.90}},{{1,1},{19.91,21.88}},{{1,1},{20.14,21.86}},{{1,1},{20.36,21.84}},{{1,1},{20.59,21.82}},{{1,1},{20.82,21.80}},{{1,1},{21.04,21.78}},{{1,1},{21.27,21.76}},{{1,1},{21.50,21.74}},{{1,1},{21.72,21.72}},{{1,1},{21.95,21.70}},{{1,1},{22.18,21.68}},{{1,1},{22.40,21.66}},{{1,1},{22.63,21.64}},{{1,1},{22.86,21.62}},{{1,1},{23.08,21.61}},{{1,1},{23.31,21.59}},{{1,1},{23.54,21.57}},{{1,1},{23.76,21.55}},{{1,1},{23.99,21.53}},{{1,1},{24.21,21.51}},{{1,1},{24.44,21.49}},{{1,1},{24.67,21.47}},{{1,1},{24.89,21.45}},{{1,1},{25.12,21.43}},{{1,1},{25.35,21.41}},{{1,1},{25.57,21.39}},{{1,1},{25.80,21.37}},{{1,1},{26.03,21.35}},{{1,1},{26.25,21.33}},{{1,1},{26.48,21.31}},{{1,2},{26.71,21.29}},{{1,2},{26.94,21.27}},{{1,2},{27.17,21.27}},{{1,2},{27.40,21.27}},{{1,2},{27.64,21.27}},{{1,1},{27.87,21.29}},{{1,1},{28.11,21.32}},{{1,1},{28.34,21.36}},{{1,1},{28.57,21.39}},{{1,1},{28.81,21.42}},{{1,1},{29.04,21.45}},{{1,1},{29.28,21.48}},{{1,1},{29.52,21.51}},{{1,1},{29.75,21.54}},{{1,1},{29.99,21.57}},{{1,1},{30.23,21.61}},{{1,1},{30.47,21.64}},{{1,1},{30.71,21.67}},{{1,1},{30.95,21.70}},{{1,1},{31.18,21.73}},{{1,1},{31.42,21.76}},{{1,1},{31.66,21.79}},{{1,1},{31.90,21.82}},{{1,1},{32.14,21.86}},{{1,1},{32.38,21.89}},{{1,0},{32.61,21.92}},{{1,0},{32.85,21.95}},{{1,0},{33.09,21.97}},{{1,0},{33.33,21.98}},{{1,0},{33.57,21.98}},{{1,0},{33.80,21.96}},{{1,0},{34.04,21.95}},{{1,1},{34.27,21.91}},{{1,1},{34.50,21.87}},{{1,1},{34.73,21.83}},{{1,1},{34.96,21.79}},{{1,1},{35.20,21.74}},{{1,1},{35.43,21.70}},{{1,1},{35.66,21.66}},{{1,1},{35.89,21.61}},{{0,1},{36.12,21.57}},{{0,1},{36.35,21.53}},{{0,1},{36.58,21.48}},{{0,1},{36.80,21.45}},{{0,1},{37.02,21.41}},{{0,1},{37.23,21.37}},{{0,1},{37.45,21.33}},{{0,1},{37.65,21.29}},{{0,1},{37.86,21.25}},{{0,1},{38.06,21.21}},{{0,1},{38.26,21.18}},{{0,1},{38.46,21.14}},{{0,1},{38.65,21.11}},{{0,1},{38.84,21.07}},{{0,1},{39.03,21.04}},{{0,1},{39.21,21.00}},{{0,1},{39.39,20.97}},{{0,1},{39.57,20.94}},{{0,1},{39.75,20.91}},{{0,1},{39.93,20.88}},{{0,1},{40.10,20.84}},{{0,1},{40.27,20.81}},{{0,1},{40.43,20.78}},{{0,1},{40.60,20.75}},{{0,1},{40.76,20.72}},{{0,1},{40.92,20.69}},{{0,1},{41.08,20.66}},{{0,1},{41.24,20.63}},{{0,1},{41.39,20.61}},{{0,1},{41.55,20.58}},{{0,1},{41.70,20.55}},{{0,1},{41.85,20.52}},{{0,1},{42.00,20.50}},{{0,1},{42.14,20.47}},{{0,1},{42.29,20.44}},{{0,1},{42.43,20.41}},{{0,1},{42.57,20.39}},{{0,1},{42.71,20.37}},{{0,1},{42.84,20.34}},{{0,1},{42.98,20.32}},{{0,1},{43.11,20.30}},{{0,1},{43.25,20.27}},{{0,1},{43.38,20.25}},{{0,1},{43.50,20.23}},{{0,1},{43.63,20.20}},{{0,1},{43.76,20.18}},{{0,1},{43.88,20.16}},{{0,1},{44.01,20.13}},{{0,1},{44.13,20.11}},{{0,1},{44.25,20.09}},{{0,1},{44.37,20.07}},{{0,1},{44.49,20.05}},{{0,1},{44.61,20.03}},{{0,1},{44.73,20.01}},{{0,1},{44.84,19.99}},{{0,1},{44.96,19.97}},{{0,1},{45.07,19.95}},{{0,1},{45.19,19.93}},{{0,1},{45.30,19.91}},{{0,1},{45.41,19.89}},{{0,1},{45.52,19.87}},{{0,1},{45.63,19.85}},{{0,1},{45.74,19.83}},{{0,1},{45.85,19.81}},{{0,1},{45.96,19.79}},{{0,1},{46.06,19.77}},{{0,1},{46.17,19.75}},{{0,1},{46.27,19.73}},{{0,1},{46.38,19.71}},{{0,1},{46.48,19.70}},{{0,1},{46.58,19.68}},{{0,1},{46.68,19.66}},{{0,1},{46.79,19.64}},{{0,1},{46.89,19.62}},{{0,1},{46.98,19.61}},{{0,1},{47.08,19.59}},{{0,1},{47.18,19.57}},{{0,1},{47.28,19.56}},{{0,1},{47.37,19.54}},{{0,1},{47.46,19.53}},{{0,1},{47.56,19.51}},{{0,1},{47.65,19.50}}}
  }

  local sim_tick = 0
  local drive_tick = 0
  local cars =
  {
    game.get_entity_by_tag("car1"),
    game.get_entity_by_tag("car2"),
    game.get_entity_by_tag("car3")
  }

  for i = 1, 3 do
    local character = game.surfaces.fulgora.create_entity{name = "character", position = cars[i].position, force = "player"}
    character.color = cars[i].color
    cars[i].set_passenger(character)
  end

  script.on_event(defines.events.on_tick, function(event)
    sim_tick = sim_tick + 1
    if sim_tick > 210 then
      drive_tick = drive_tick + 1
    end
    if drive_tick > 0 then
      for i = 1, 3 do
        if cars[i].valid and driving_data[i][drive_tick] then
          cars[i].riding_state = {acceleration = driving_data[i][drive_tick][1][1], direction = driving_data[i][drive_tick][1][2]}
          cars[i].teleport(driving_data[i][drive_tick][2])
        end
      end
    end
  end)
]]
