.class Lcom/oneplus/gallery/VideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
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
    .line 492
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$10;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 496
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$10;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1400(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() - what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$10;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # setter for: Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsVideoCannotPlay:Z
    invoke-static {v0, v3}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1502(Lcom/oneplus/gallery/VideoPlayerActivity;Z)Z

    .line 498
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$10;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->stop()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1600(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 499
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$10;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->updateViewWhileError()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1700(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 500
    return v3
.end method
