.class public abstract Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaDeletionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "success"    # Z

    .prologue
    .line 107
    return-void
.end method

.method public onDeletionProcessCompleted()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onDeletionProcessStarted()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 126
    return-void
.end method
