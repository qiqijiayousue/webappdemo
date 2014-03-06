package servlets;

import java.sql.SQLSyntaxErrorException;

/**
 * Created by miaoxi.zj on 14-3-4.
 */
public class GetTable {

    public static void main(String[] args){
        /*
        chrome:30beec198248f247d5a356412d563a87
        FF:a37750ab2fbbf9bb50c20c93dbc9119e
        樊忠：4b3cf159de23a647bbb2e12dafedceb1
         */
        String trackId = "a37750ab2fbbf9bb50c20c93dbc9119e";

        System.out.println("库：tae_browser_record_："+ Math.floor(Math.abs(trackId.hashCode()) % 256 / 64));
        System.out.println("表：jae_tack_temp_"+Math.abs(trackId.hashCode()) % 256);

        /*
        taetest01:userId=3598322240
        miaoxi03:userId=2062118596
         */
        Long userId = 3598322240L;
        System.out.println("taetest01库：tae_browser_record_"+Math.floor(userId%256/64));
        System.out.println("taetest01表：jae_track_"+Math.floor(userId%256));

    }
}
