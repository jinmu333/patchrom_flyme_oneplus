.class Lcom/oneplus/gallery/MediaSetListFragment$1;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$1;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$1;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$002(Lcom/oneplus/gallery/MediaSetListFragment;Z)Z

    .line 123
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$1;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onVisibleMediaSetsChanged()V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$100(Lcom/oneplus/gallery/MediaSetListFragment;)V

    .line 124
    return-void
.end method
