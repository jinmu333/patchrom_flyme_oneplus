.class Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$2;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callOnDeletionStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$2;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$2;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$2;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 215
    return-void
.end method
