.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/RttManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/RttManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const-string v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTT manager get message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "listener":Ljava/lang/Object;
    if-nez v1, :cond_0

    const-string v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v1    # "listener":Ljava/lang/Object;
    :pswitch_1
    return-void

    :pswitch_2
    const-string v2, "RttManager"

    const-string v3, "Channel connection lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    invoke-static {v2, v5}, Landroid/net/wifi/RttManager;->-set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/RttManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    return-void

    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_0
    const-string v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    return-void

    :pswitch_4
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .end local v1    # "listener":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_0

    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ResponderConfig;

    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnabled(Landroid/net/wifi/RttManager$ResponderConfig;)V

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnableFailure(I)V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27202
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method reportFailure(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .end local p1    # "listener":Ljava/lang/Object;
    iget v2, p2, Landroid/os/Message;->arg1:I

    const-string v3, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .end local p1    # "listener":Ljava/lang/Object;
    iget-object v2, v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    invoke-interface {p1, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    return-void
.end method