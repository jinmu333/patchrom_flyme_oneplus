.class Lcom/oneplus/gallery/PhotoEditorFragment$8;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$8;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Landroid/graphics/drawable/Drawable;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Landroid/graphics/drawable/Drawable;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$8;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorPreviewChanged(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$800(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/graphics/drawable/Drawable;)V

    .line 368
    return-void
.end method
