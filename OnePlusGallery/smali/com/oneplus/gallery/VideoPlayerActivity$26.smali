.class Lcom/oneplus/gallery/VideoPlayerActivity$26;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->updateControlsVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1550
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$26;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$26;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$3300(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$26;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$3102(Lcom/oneplus/gallery/VideoPlayerActivity;Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;)Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    .line 1556
    return-void
.end method
