package edu.osu.cse.powermodeltest;

import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
//import java.util.Timer;
//import java.util.TimerTask;

import edu.osu.cse.powermodeltest.R;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardLock;
import android.content.Context;
//import android.app.AlertDialog.Builder;
//import android.content.pm.ActivityInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
//import android.os.PowerManager;
import android.os.SystemClock;
/*
import android.os.BatteryManager;
import android.os.AsyncTask;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.FloatMath;
import android.util.Log;
*/

import android.widget.TextView;
import android.widget.Button;
import android.util.FloatMath;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;


public class PowerModelTestActivity extends Activity  implements OnClickListener 
{
  //private static String logTag = "PowerModelTest";
  TextView textUpdate;
  Button buttonLcd, buttonWifi, buttonCpu, buttonRoot;
  long currentTime, testPeriod;     // in millisecond

  KeyguardManager keyguardManager; 
  KeyguardLock lock;
  WindowManager.LayoutParams lp;
  
  float lcdValue;
  
  AlertDialog.Builder alertBuilder;

    
  /** Called when the activity is first created. */
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);
    
    keyguardManager = (KeyguardManager)getSystemService(Activity.KEYGUARD_SERVICE);
    lock = keyguardManager.newKeyguardLock(KEYGUARD_SERVICE);
    lock.disableKeyguard();
    
    textUpdate = (TextView)findViewById(R.id.text_update);
    buttonLcd = (Button)findViewById(R.id.btn_lcd);
    buttonLcd.setOnClickListener(this);
    buttonWifi = (Button)findViewById(R.id.btn_wifi);
    buttonWifi.setOnClickListener(this);
    buttonCpu = (Button)findViewById(R.id.btn_cpu);
    buttonCpu.setOnClickListener(this);
    buttonRoot = (Button)findViewById(R.id.btn_root);
    buttonRoot.setOnClickListener(this);

    lp = getWindow().getAttributes();

    alertBuilder = new AlertDialog.Builder(this);
    alertBuilder.setCancelable(true);
  }
  
  public void onClick(View v)
  {
    Button btn = (Button)v;
    switch(btn.getId())
    {
      /**
       * To exercise LCD: 
       * set the screen brightness to each level (5 in total) for 5 seconds 
       */
      case R.id.btn_lcd:
        //currentTime = SystemClock.elapsedRealtime();
        
        /** brightness: 0 to 1 adjusts the brightness from dark to full bright. */
        lcdValue = 1.000f;
        
        new CountDownTimer(60050, 10000) 
        {
          public void onTick(long millisUntilFinished) 
          {
            int lcdbrightness = (int)(lcdValue*255);
            /*
            textUpdate.append(Float.toString(lcdValue)+ " " + 
                              Float.toString(lcdbrightness)+ " " + millisUntilFinished + "\n");
            */
            lp.screenBrightness = lcdValue;
            getWindow().setAttributes(lp);

            android.provider.Settings.System.putInt(
              getContentResolver(), 
              android.provider.Settings.System.SCREEN_BRIGHTNESS, lcdbrightness);
            
            lcdValue -= 0.199f;
          }

          public void onFinish() 
          {
            lcdValue = 1.000f;
            int lcdbrightness = (int)(lcdValue*255);
            lp.screenBrightness = lcdValue;
            getWindow().setAttributes(lp);

            android.provider.Settings.System.putInt(
                getContentResolver(), 
                android.provider.Settings.System.SCREEN_BRIGHTNESS, lcdbrightness);

            alertBuilder.setMessage("LCD exercise finished.");
            alertBuilder.create().show();
          }
        }.start();
                
        break;
      
      /** To exercise WiFi */
      case R.id.btn_wifi:
        ConnectivityManager connMgr = 
          (ConnectivityManager)getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = connMgr.getActiveNetworkInfo();

        /** Check network status */
        if(networkInfo != null && networkInfo.isConnected())
        {
          /** Set the screen brightness to the medium */
          lcdValue = 0.500f;
          /** Set the screen brightness to the minimum */
          //lcdValue = 0.004f;
          int lcdbrightness = (int)(lcdValue*255);
          lp.screenBrightness = lcdValue;
          getWindow().setAttributes(lp);

          android.provider.Settings.System.putInt(
              getContentResolver(), 
              android.provider.Settings.System.SCREEN_BRIGHTNESS, lcdbrightness);

          new CountDownTimer(60050, 10000) 
          {
            String[] urls = new String[] {
                "http://www.cse.ohio-state.edu/~chenja/test001.dat",
                "http://www.cse.ohio-state.edu/~chenja/test002.dat",
                "http://www.cse.ohio-state.edu/~chenja/test003.dat",
                "http://www.cse.ohio-state.edu/~chenja/test004.dat",
                "http://www.cse.ohio-state.edu/~chenja/test005.dat",
                "http://www.cse.ohio-state.edu/~chenja/test006.dat"};

            int testIter = 0;
            
            public void onTick(long millisUntilFinished) 
            {
              //textUpdate.append("start testing " + Integer.toString(testIter) + "\n");          
              new DownloadWifiTester().execute(urls[testIter]);
              
              ++testIter;
            }

            public void onFinish() 
            {
              lcdValue = 1.000f;
              int lcdbrightness = (int)(lcdValue*255);
              lp.screenBrightness = lcdValue;
              getWindow().setAttributes(lp);

              android.provider.Settings.System.putInt(
                  getContentResolver(), 
                  android.provider.Settings.System.SCREEN_BRIGHTNESS, lcdbrightness);

              alertBuilder.setMessage("Wifi exercise finished.");
              alertBuilder.create().show();
            }
          }.start();
        }
        else
        {
          alertBuilder.setMessage("No network connection.");
          alertBuilder.create().show();
        }
        
        break;
        
      /** To exercise CPU */
      case R.id.btn_cpu:
        /** use "SetCPU" to set up the CPU frequency range */
        String[] bound = new String[] {"50", "500"};
        
        // BAB: Added 3 more threads to tax all cores on Nexus 5
        new CpuTester().execute(bound);
        new CpuTester().execute(bound);
        new CpuTester().execute(bound);
        new CpuTester().execute(bound);
        
        break;
        
      /** To request root permission */
      case R.id.btn_root:
        Process p;  

        try {  
          // Preform su to get root privledges  
          p = Runtime.getRuntime().exec("su");   
        
          // Attempt to write a file to a root-only  
          DataOutputStream os = new DataOutputStream(p.getOutputStream());  
          os.writeBytes("echo \"Do I have root?\" >/data/temporary.txt\n");  
        
          // Close the terminal  
          os.writeBytes("exit\n");  
          os.flush();  
          try {  
            p.waitFor();  
            if (p.exitValue() != 255)  
              alertBuilder.setMessage("Root!");
            else  
              alertBuilder.setMessage("Not root!");
          } catch(InterruptedException e) {  
            alertBuilder.setMessage("Not root!");
          }  
        } catch(IOException e) {  
          alertBuilder.setMessage("Not root!");
        } finally {
          alertBuilder.create().show();
        }

        
        break;

      default:
        // shouldn't be here        
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onStop()
  {
    super.onStop();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  /** Output log to file */
  public void logToFile(String text)
  { 
    currentTime = SystemClock.elapsedRealtime();
    File logFile = new File("sdcard/pm_" + currentTime + ".log");

    if(!logFile.exists())
    {
      try {
        logFile.createNewFile();
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
     
    try {
      /* BufferedWriter for performance, true to set append to file flag */
      BufferedWriter buf = new BufferedWriter(new FileWriter(logFile, true)); 
      buf.append(text);
      buf.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
  
  class CpuTester extends AsyncTask<String, Void, Integer> 
  {
    @Override 
    protected void onPreExecute()
    {
      /* Set the screen brightness to medium */
      lcdValue = 0.500f;
      /* Set the screen brightness to minimum */
      //lcdValue = 0.004f;
      int lcdbrightness = (int)(lcdValue*255);
      lp.screenBrightness = lcdValue;
      getWindow().setAttributes(lp);

      android.provider.Settings.System.putInt(
          getContentResolver(), 
          android.provider.Settings.System.SCREEN_BRIGHTNESS, lcdbrightness);
    }

    @Override
    protected Integer doInBackground(String... bound)
    {
      cpuRunner(Integer.parseInt(bound[0]), Integer.parseInt(bound[1]));
      return 0;
    }

    private void cpuRunner(int loop, int bound)
    {
      int i, j;
      float x[][] = new float[bound][bound];
      
      for(;loop>0; loop--)
      {
        for(i=0; i<bound; i++)
          for(j=0; j<bound; j++)
            x[i][j] = FloatMath.sin(i)*FloatMath.sin(j)+FloatMath.cos(i); 
      }
    }

    @Override
    protected void onPostExecute(Integer result) 
    {
      lcdValue = 1.000f;
      int lcdbrightness = (int)(lcdValue*255);
      lp.screenBrightness = lcdValue;
      getWindow().setAttributes(lp);

      android.provider.Settings.System.putInt(
          getContentResolver(), 
          android.provider.Settings.System.SCREEN_BRIGHTNESS, lcdbrightness);

      alertBuilder.setMessage("CPU exercise finised.");
      alertBuilder.create().show();
    }
  }

  /** 
   * This part of code is from Android developer's page:
   * http://developer.android.com/training/basics/network-ops/connecting.html
   */
  class DownloadWifiTester extends AsyncTask<String, Void, Integer>
  {
    @Override
    protected Integer doInBackground(final String... urls) 
    {
      try {
        downloadUrl(urls[0]);
        return 0;
      } catch(IOException e) {
        e.printStackTrace();
        return -1;
      }

      /*
      try {
        for(int i=0; i<urls.length; i++) 
          downloadUrl(urls[i]);
        return 0;
      } catch(IOException e) {
        e.printStackTrace();
        return -1;
      }
      */
    }
    
    @Override 
    protected void onPreExecute()
    {
    }

    @Override
    protected void onPostExecute(Integer result) 
    {
    }
    
    private int downloadUrl(String url) throws IOException 
    {
      InputStream is = null;
      int len = 1024;
          
      try {
        URL target = new URL(url);
        HttpURLConnection conn = (HttpURLConnection)target.openConnection();
        conn.setReadTimeout(10000);   // in milliseconds
        conn.setConnectTimeout(15000);    // in milliseconds
        conn.setRequestMethod("GET");
        conn.setDoInput(true);

        conn.connect();
        if(conn.getResponseCode() != -1)
          is = conn.getInputStream();
        else 
          return -1;

        /** Discard what was just read */
        int rlen, len_total=0;
        while((rlen=is.read(new byte[len])) != -1)
          len_total += rlen;
        
        Log.d("wifi_test", "read " + (len_total/1024));
        
        return 0;
      } finally {
        /** Makes sure that the InputStream is closed */
        if(is != null) { is.close(); } 
      }
    }
  }
}