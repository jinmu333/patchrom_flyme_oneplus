.class Lcom/oneplus/gallery/PhotoEditorFragment$4;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;
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
    .line 234
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$4;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$4;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->onNegativeButtonClick()V
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$100(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    .line 239
    return-void
.end method
