.class Lcom/oneplus/gallery/PhotoEditorFragment$15;
.super Lcom/oneplus/widget/ScaleImageView$StateCallback;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 746
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I
    invoke-static {v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1700(Lcom/oneplus/gallery/PhotoEditorFragment;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/widget/ScaleImageView;->getLocationInWindow([I)V

    .line 747
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I
    invoke-static {v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1700(Lcom/oneplus/gallery/PhotoEditorFragment;)[I

    move-result-object v1

    aget v1, v1, v4

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I
    invoke-static {v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1700(Lcom/oneplus/gallery/PhotoEditorFragment;)[I

    move-result-object v2

    aget v2, v2, v5

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I
    invoke-static {v3}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1700(Lcom/oneplus/gallery/PhotoEditorFragment;)[I

    move-result-object v3

    aget v3, v3, v4

    add-int/2addr v3, p4

    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I
    invoke-static {v4}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1700(Lcom/oneplus/gallery/PhotoEditorFragment;)[I

    move-result-object v4

    aget v4, v4, v5

    add-int/2addr v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 748
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$15;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v2, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_PREVIEW_IMAGE_BOUNDS:Lcom/oneplus/base/PropertyKey;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1800(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 749
    return-void
.end method
