.class Lcom/oneplus/gallery2/OPGalleryActivity$2;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/gallery2/media/AlbumEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$2;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 201
    check-cast p3, Lcom/oneplus/gallery2/media/AlbumEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/OPGalleryActivity$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/media/AlbumEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/media/AlbumEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery2/media/AlbumEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumEventArgs;",
            ">;",
            "Lcom/oneplus/gallery2/media/AlbumEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/media/AlbumEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$2;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onAlbumCreated(Lcom/oneplus/gallery2/media/AlbumEventArgs;)V
    invoke-static {v0, p3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$100(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/media/AlbumEventArgs;)V

    .line 206
    return-void
.end method
