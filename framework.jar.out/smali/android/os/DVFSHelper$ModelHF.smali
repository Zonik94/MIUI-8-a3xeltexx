.class Landroid/os/DVFSHelper$ModelHF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelHF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2056
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelHF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2057
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelHF;->LIST_SCROLL_ARM_FREQ:I

    .line 2058
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelHF;->AMS_RESUME_ARM_FREQ:I

    .line 2059
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelHF;->AMS_RESUME_CPU_CORE:I

    .line 2060
    iput v1, p0, Landroid/os/DVFSHelper$ModelHF;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2061
    iput v1, p0, Landroid/os/DVFSHelper$ModelHF;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2063
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 2064
    return-void
.end method