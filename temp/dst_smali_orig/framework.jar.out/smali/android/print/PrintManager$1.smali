.class Landroid/print/PrintManager$1;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/print/PrintManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    iput-object p1, p0, Landroid/print/PrintManager$1;->this$0:Landroid/print/PrintManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    .local v5, "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    invoke-virtual {v5}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    move-result-object v1

    .local v1, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/print/PrintJobId;

    .local v4, "printJobId":Landroid/print/PrintJobId;
    invoke-interface {v1, v4}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    .end local v4    # "printJobId":Landroid/print/PrintJobId;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    .end local v5    # "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;

    .local v7, "wrapper":Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    invoke-virtual {v7}, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintServicesChangeListener;

    move-result-object v3

    .local v3, "listener":Landroid/print/PrintManager$PrintServicesChangeListener;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/print/PrintManager$PrintServicesChangeListener;->onPrintServicesChanged()V

    goto :goto_0

    .end local v3    # "listener":Landroid/print/PrintManager$PrintServicesChangeListener;
    .end local v7    # "wrapper":Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;

    .local v6, "wrapper":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
    invoke-virtual {v6}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    move-result-object v2

    .local v2, "listener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;->onPrintServiceRecommendationsChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
