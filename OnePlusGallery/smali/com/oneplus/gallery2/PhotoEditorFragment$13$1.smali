.class Lcom/oneplus/gallery2/PhotoEditorFragment$13$1;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment$13;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment$13;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$13$1;->this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 594
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$13$1;->this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/PhotoEditorFragment$13;->dismissAllowingStateLoss()V

    .line 595
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$13$1;->this$1:Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/PhotoEditorFragment$13;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 596
    .local v0, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    .line 598
    :cond_0
    return-void
.end method
