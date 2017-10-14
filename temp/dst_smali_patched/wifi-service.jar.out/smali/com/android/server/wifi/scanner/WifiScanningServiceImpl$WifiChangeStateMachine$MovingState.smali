.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingState"
.end annotation


# instance fields
.field mScanResultsPending:Z

.field mWifiChangeDetected:Z

.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-set0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState$1;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->issueFullScan()V

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method issueFullScan()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/16 v1, 0x2710

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v1, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    return v10

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return v11

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v5, "bad request"

    const/4 v6, -0x3

    invoke-virtual {v4, p1, v6, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .local v1, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v4, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    iput-boolean v10, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    iget v4, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    iget v5, v1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    mul-int/2addr v4, v5

    int-to-long v2, v4

    .local v2, "unchangedDelay":J
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v2

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v12, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .end local v1    # "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .end local v2    # "unchangedDelay":J
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/net/wifi/WifiScanner$ScanData;

    const/16 v6, 0x1388

    invoke-static {v5, v4, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;I)V

    iput-boolean v10, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v12, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    iput-boolean v10, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/net/wifi/ScanResult;

    invoke-static {v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V

    iput-boolean v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->issueFullScan()V

    goto/16 :goto_0

    :sswitch_5
    iget-boolean v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_3
        0x2700b -> :sswitch_0
        0x2700c -> :sswitch_1
        0x2700d -> :sswitch_2
        0x27104 -> :sswitch_4
        0x27105 -> :sswitch_5
    .end sparse-switch
.end method