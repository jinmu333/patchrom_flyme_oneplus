.class Lcom/oppo/tribune/packshow/PackPostListener$3;
.super Ljava/lang/Object;
.source "PackPostListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/packshow/PackPostListener;->showChooseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/packshow/PackPostListener;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/packshow/PackPostListener;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/tribune/packshow/PackPostListener$3;->this$0:Lcom/oppo/tribune/packshow/PackPostListener;

    iput-object p2, p0, Lcom/oppo/tribune/packshow/PackPostListener$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/tribune/packshow/PackPostListener$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    return-void
.end method
