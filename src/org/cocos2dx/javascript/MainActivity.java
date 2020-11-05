package org.cocos2dx.javascript;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import jaygoo.cocos.libnativecocos.AppActivity;

/**
 * <pre>
 *     author : JayGoo
 *     e-mail : 1015121748@qq.com
 *     time   : 2020/11/04
 *     desc   :
 * </pre>
 */
public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        startActivity(new Intent(this, AppActivity.class));
        finish();
    }
}
