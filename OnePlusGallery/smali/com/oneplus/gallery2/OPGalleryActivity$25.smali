.class Lcom/oneplus/gallery2/OPGalleryActivity$25;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$25;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$25;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripOpened()V
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2800(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    .line 415
    return-void
.end method
