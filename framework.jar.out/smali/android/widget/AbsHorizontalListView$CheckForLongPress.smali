.class Landroid/widget/AbsHorizontalListView$CheckForLongPress;
.super Landroid/widget/AbsHorizontalListView$WindowRunnnable;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 3375
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 3375
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3378
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v6, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 3379
    .local v5, "motionPosition":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3380
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3381
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v6, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 3382
    .local v4, "longPressPosition":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, v6, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3384
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 3385
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v6, v6, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 3386
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3388
    :cond_0
    if-eqz v1, :cond_2

    .line 3389
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3390
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3391
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3396
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 3393
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_0
.end method