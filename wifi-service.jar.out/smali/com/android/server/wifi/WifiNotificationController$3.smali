.class Lcom/android/server/wifi/WifiNotificationController$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 386
    .local v0, "currState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$3;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$1200(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    .line 392
    .end local v0    # "currState":Landroid/net/NetworkInfo$DetailedState;
    :cond_0
    return-void
.end method