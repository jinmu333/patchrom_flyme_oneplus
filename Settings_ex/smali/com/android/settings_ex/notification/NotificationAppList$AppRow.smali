.class public Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
.super Lcom/android/settings_ex/notification/NotificationAppList$Row;
.source "NotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public appPriority:I

.field public banned:Z

.field public first:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public pkg:Ljava/lang/String;

.field public priority:Z

.field public sensitive:Z

.field public settingsIntent:Landroid/content/Intent;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationAppList$Row;-><init>(Lcom/android/settings_ex/notification/NotificationAppList$1;)V

    return-void
.end method
