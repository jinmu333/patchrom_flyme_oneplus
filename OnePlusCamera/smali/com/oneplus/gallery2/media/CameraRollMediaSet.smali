.class public Lcom/oneplus/gallery2/media/CameraRollMediaSet;
.super Lcom/oneplus/gallery2/media/SpecialDirMediaSet;
.source "CameraRollMediaSet.java"


# static fields
.field public static final ID:Ljava/lang/String; = "CameraRoll"


# instance fields
.field private m_IgnoreMediaCount:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/util/Collection;)V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    .line 33
    return-void

    :cond_0
    move v0, v1

    .line 32
    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    sget-object v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 46
    if-nez v0, :cond_3

    .line 47
    :cond_2
    return-object v3

    .line 46
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    .line 49
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "CameraRoll"

    .line 60
    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "media_set_name_camera_roll"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.oneplus.gallery"

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isVisibilityChangeSupported()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected onMediaTableReady()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->onMediaTableReady()V

    .line 90
    return-void

    .line 86
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    .line 87
    sget-object v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    sget-object v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 99
    check-cast v0, Ljava/lang/Integer;

    .line 100
    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 101
    :cond_4
    return v2
.end method

.method protected shouldDeleteRawFiles()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
