.class Lcom/oneplus/base/OrientationManager$3;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 63
    # invokes: Lcom/oneplus/base/OrientationManager;->stopOrientationSensorInternal()V
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->access$2()V

    .line 64
    return-void
.end method
