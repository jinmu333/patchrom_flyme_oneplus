.class Lcom/oneplus/gallery2/OPGalleryActivity$33;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

.field final synthetic val$position:I

.field final synthetic val$tab:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 3003
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$33;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    iput p2, p0, Lcom/oneplus/gallery2/OPGalleryActivity$33;->val$position:I

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$33;->val$tab:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$33;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/OPGalleryActivity$33$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$33$1;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity$33;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3023
    return-void
.end method
