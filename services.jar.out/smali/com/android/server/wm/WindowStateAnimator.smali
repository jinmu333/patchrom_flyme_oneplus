.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final PENDING_TRANSACTION_FINISH_WAIT_TIME:J = 0x64L

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String;

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field private mAnimDx:I

.field private mAnimDy:I

.field mAnimLayer:I

.field private mAnimateMove:Z

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field private mAnimationStartDelayed:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleUntilResize:Z

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mKeyguardGoingAwayAnimation:Z

.field mKeyguardGoingAwayWithWallpaper:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field mLastLayer:I

.field private final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLocalAnimating:Z

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mStackClip:I

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field mTmpFinalClipRect:Landroid/graphics/Rect;

.field private final mTmpSize:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 129
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    .line 151
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 152
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 153
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 156
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    .line 157
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    .line 159
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 160
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    .line 161
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .line 167
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 168
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 175
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    .line 177
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 178
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 240
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 241
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 243
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 246
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 248
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 249
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 250
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 251
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 253
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 255
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    .line 256
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    .line 262
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 263
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1

    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 265
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_2

    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 266
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 267
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 268
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 269
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 245
    return-void

    .line 258
    :cond_0
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "WindowStateAnimator ctor: Display has been removed"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_1

    .line 265
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_2
.end method

.method private adjustCropToStackBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 15
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "clipRect"    # Landroid/graphics/Rect;
    .param p3, "finalClipRect"    # Landroid/graphics/Rect;
    .param p4, "isFreeformResizing"    # Z

    .prologue
    .line 1380
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1381
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    iget-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v10, :cond_1

    .line 1390
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1391
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1395
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->resolveStackClip()I

    move-result v5

    .line 1398
    .local v5, "stackClip":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    .line 1399
    return-void

    .line 1387
    .end local v5    # "stackClip":I
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void

    .line 1392
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void

    .line 1402
    .restart local v5    # "stackClip":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1403
    .local v9, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p1

    if-ne v0, v9, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1404
    return-void

    .line 1407
    :cond_4
    iget-object v4, v7, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1408
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1409
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1413
    .local v6, "surfaceInsets":Landroid/graphics/Rect;
    if-eqz p4, :cond_5

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowSurfaceController;->getX()F

    move-result v10

    float-to-int v2, v10

    .line 1415
    .local v2, "frameX":I
    :goto_0
    if-eqz p4, :cond_6

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowSurfaceController;->getY()F

    move-result v10

    float-to-int v3, v10

    .line 1420
    .local v3, "frameY":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v5, :cond_7

    const/4 v8, 0x1

    .line 1425
    .local v8, "useFinalClipRect":Z
    :goto_2
    if-eqz v8, :cond_8

    .line 1426
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1378
    :goto_3
    return-void

    .line 1414
    .end local v2    # "frameX":I
    .end local v3    # "frameY":I
    .end local v8    # "useFinalClipRect":Z
    :cond_5
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v10, v11

    .restart local v2    # "frameX":I
    goto :goto_0

    .line 1416
    :cond_6
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v10, v11

    .restart local v3    # "frameY":I
    goto :goto_1

    .line 1421
    :cond_7
    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    goto :goto_2

    .line 1428
    .restart local v8    # "useFinalClipRect":Z
    :cond_8
    iget v10, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1429
    iget v10, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1438
    :cond_9
    :goto_4
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v10, v2

    .line 1437
    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p2

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 1440
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v10, v3

    .line 1439
    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p2

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 1442
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v10, v2

    .line 1441
    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p2

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 1444
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v10, v3

    .line 1443
    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p2

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 1433
    :cond_a
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v12, v6, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    .line 1434
    iget v13, v6, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    neg-int v14, v14

    .line 1433
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_4
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .locals 14

    .prologue
    .line 1982
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    .line 1983
    .local v8, "startTime":J
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    .line 1984
    .local v0, "duration":J
    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    sub-long v2, v10, v8

    .line 1985
    .local v2, "elapsed":J
    sub-long v4, v0, v2

    .line 1986
    .local v4, "fadeDuration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_0

    .line 1988
    return-void

    .line 1990
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v7, "newAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const v11, #android:anim@app_starting_exit#t

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .local v6, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 2000
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 1981
    return-void
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 830
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2

    .line 832
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 833
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 855
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 864
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 865
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 866
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 829
    return-void

    .line 838
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 839
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 840
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 841
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 843
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 844
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 845
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 847
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 848
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method private calculateSystemDecorRect()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 1210
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1211
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 1212
    .local v1, "decorRect":Landroid/graphics/Rect;
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1213
    .local v8, "width":I
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1216
    .local v3, "height":I
    iget v9, v7, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int v4, v9, v10

    .line 1217
    .local v4, "left":I
    iget v9, v7, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v6, v9, v10

    .line 1220
    .local v6, "top":I
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1221
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v9

    .line 1220
    if-eqz v9, :cond_3

    .line 1231
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1232
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 1233
    iget v10, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1234
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1232
    invoke-virtual {v9, v0, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1242
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-eqz v9, :cond_4

    .local v0, "cropToDecor":Z
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->isInFlymeMovedMode(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v9

    if-eqz v9, :cond_flyme_0

    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v4

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v6

    .line 1246
    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v4

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v6

    .line 1245
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 1255
    :cond_1
    :cond_flyme_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->setSystemDecorRectTop(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-boolean v9, v7, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v9, :cond_2

    iget v9, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 1256
    iget v5, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1257
    .local v5, "scale":F
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v10, v14

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 1258
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v10, v14

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 1259
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v10, v14

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 1260
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v10, v14

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 1209
    .end local v5    # "scale":F
    :cond_2
    return-void

    .line 1236
    .end local v0    # "cropToDecor":Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v0, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1242
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getAnimationFrameTime(Landroid/view/animation/Animation;J)J
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "currentTime"    # J

    .prologue
    .line 2121
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_0

    .line 2122
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2123
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    return-wide v0

    .line 2125
    :cond_0
    return-wide p2
.end method

.method private resolveStackClip()I
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->getStackClip()I

    move-result v0

    return v0

    .line 1374
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    return v0
.end method

.method private showSurfaceRobustlyLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1862
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1863
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1864
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1867
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    .local v0, "shown":Z
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->showWindow(Lcom/android/server/wm/WindowStateAnimator;)V

    if-nez v0, :cond_1

    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_3

    .line 1872
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show surface turning screen on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 1874
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1876
    :cond_3
    return v6
.end method

.method private stepAnimation(J)Z
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    move-result-wide p1

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 383
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 384
    .local v0, "more":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 389
    :cond_0
    return v0

    .line 379
    .end local v0    # "more":Z
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 10
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    .prologue
    const-wide/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1911
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v5, p2, :cond_2

    .line 1918
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v4, :cond_1

    .line 1919
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    .line 1920
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFadeoutDuringKeyguardExitAnimation()V

    .line 1922
    :cond_1
    return v3

    .line 1912
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 1911
    if-nez v5, :cond_0

    .line 1929
    const-string/jumbo v5, "WSA#applyAnimationLocked"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1930
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1931
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v5, v6, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 1932
    .local v1, "anim":I
    const/4 v2, -0x1

    .line 1933
    .local v2, "attr":I
    const/4 v0, 0x0

    .line 1934
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_9

    .line 1935
    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1955
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    :goto_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "applyAnimation: win="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1957
    const-string/jumbo v7, " anim="

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1957
    const-string/jumbo v7, " attr=0x"

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1957
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1958
    const-string/jumbo v7, " a="

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1959
    const-string/jumbo v7, " transit="

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1960
    const-string/jumbo v7, " isEntrance="

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1960
    const-string/jumbo v7, " Callers "

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1960
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    .line 1956
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1955
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_4
    if-eqz v0, :cond_6

    .line 1962
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded animation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1964
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1969
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_6
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1971
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v5, v6, :cond_7

    .line 1972
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustForImeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1973
    if-eqz p2, :cond_7

    .line 1974
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1975
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1978
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_b

    :goto_2
    return v3

    .line 1935
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "anim":I
    .restart local v2    # "attr":I
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1937
    :cond_9
    packed-switch p1, :pswitch_data_0

    .line 1951
    :goto_3
    if-ltz v2, :cond_3

    .line 1952
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1939
    .local v0, "a":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v2, 0x0

    .line 1940
    goto :goto_3

    .line 1942
    :pswitch_1
    const/4 v2, 0x1

    .line 1943
    goto :goto_3

    .line 1945
    :pswitch_2
    const/4 v2, 0x2

    .line 1946
    goto :goto_3

    .line 1948
    :pswitch_3
    const/4 v2, 0x3

    .line 1949
    goto :goto_3

    .line 1967
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto :goto_1

    :cond_b
    move v3, v4

    .line 1978
    goto :goto_2

    .line 1937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1883
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v1, :cond_0

    .line 1884
    return-void

    .line 1887
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v1, :cond_2

    .line 1888
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1889
    const/4 v0, 0x1

    .line 1893
    .local v0, "transit":I
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1895
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1

    .line 1896
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    .line 1897
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1879
    :cond_1
    return-void

    .line 1891
    .end local v0    # "transit":I
    :cond_2
    const/4 v0, 0x3

    .restart local v0    # "transit":I
    goto :goto_0
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 977
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 978
    .local v1, "surfaceInsetLeft":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 980
    .local v2, "surfaceInsetTop":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 982
    .local v0, "scale":F
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 983
    iget v3, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 987
    int-to-float v3, v1

    mul-float/2addr v3, v0

    int-to-float v4, v1

    sub-float/2addr v3, v4

    neg-float v3, v3

    .line 988
    int-to-float v4, v2

    mul-float/2addr v4, v0

    int-to-float v5, v2

    sub-float/2addr v4, v5

    neg-float v4, v4

    .line 987
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "finalClipRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1265
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1266
    .local v5, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1267
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 1268
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1269
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1270
    return-void

    .line 1272
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1273
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Updating crop win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mLastCrop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1273
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->updateSurfaceWindowCrop(Lcom/android/server/wm/WindowStateAnimator;)V

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1280
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1281
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    .line 1282
    iget v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    .line 1283
    iget v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v11, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .line 1281
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 1303
    :cond_2
    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->isFrameFullscreen(Landroid/view/DisplayInfo;)Z

    move-result v3

    .line 1305
    .local v3, "fullscreen":Z
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v6

    if-nez v6, :cond_d

    const/4 v4, 0x1

    .line 1309
    .local v4, "isFreeformResizing":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v6, :cond_3

    if-eqz v3, :cond_e

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1310
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Initial clip rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1311
    const-string/jumbo v8, " mHasClipRect="

    .line 1310
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1311
    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 1310
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1311
    const-string/jumbo v8, " fullscreen="

    .line 1310
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1320
    :cond_5
    :goto_3
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1321
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 1322
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1323
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 1324
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 1326
    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    .line 1330
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1334
    :cond_6
    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1336
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1337
    invoke-direct {p0, v5, p1, p2, v4}, Lcom/android/server/wm/WindowStateAnimator;->adjustCropToStackBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1338
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Clip rect after stack adjustment="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1338
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_7
    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    .line 1344
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->hasJustMovedInStack()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_8
    :goto_4

    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->setSystemDecorRect(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Rect;)V

    return-void

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "fullscreen":Z
    .end local v4    # "isFreeformResizing":Z
    :cond_9
    iget v6, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    if-lt v6, v7, :cond_a

    .line 1286
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 1287
    :cond_a
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1289
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 1290
    :cond_b
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1293
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1294
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSystemDecorRect()V

    .line 1295
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1298
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSystemDecorRect()V

    .line 1299
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Applying decor to crop win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mDecorFrame="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1300
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 1299
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1300
    const-string/jumbo v8, " mSystemDecorRect="

    .line 1299
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1300
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 1299
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1305
    .restart local v3    # "fullscreen":Z
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "isFreeformResizing":Z
    goto/16 :goto_1

    .line 1309
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 1316
    :cond_f
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_3

    .line 1345
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_4
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelExitAnimationForNextAnimationLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 371
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    .line 365
    :cond_1
    return-void
.end method

.method public clearAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 317
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 318
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 320
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 321
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 323
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    .line 315
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 637
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_0

    .line 639
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "commitFinishDrawingLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cur mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 640
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    .line 639
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v2, v5, :cond_1

    .line 643
    const/4 v2, 0x0

    return v2

    .line 645
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_3

    .line 646
    :cond_2
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_3
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 651
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_5

    .line 652
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v1

    .line 654
    .end local v1    # "result":Z
    :cond_5
    return v1
.end method

.method computeShownFrameLocked()V
    .locals 26

    .prologue
    .line 993
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 995
    .local v11, "selfTransformation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 997
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1002
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v17

    .line 1003
    .local v17, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1004
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    .line 1005
    .local v16, "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1006
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1007
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1013
    :cond_0
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    if-nez v21, :cond_13

    .line 1014
    const/16 v18, 0x0

    .line 1015
    .local v18, "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_3
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1016
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1017
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1025
    .end local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    .line 1027
    .local v6, "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v10

    .line 1029
    .local v10, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v9

    .line 1031
    :goto_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 1032
    if-nez v11, :cond_2

    if-eqz v5, :cond_16

    .line 1035
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1036
    .local v7, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 1037
    .local v13, "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 1040
    .local v14, "tmpMatrix":Landroid/graphics/Matrix;
    if-eqz v9, :cond_18

    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 1048
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v15, v0

    .line 1049
    .local v15, "w":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v8, v0

    .line 1050
    .local v8, "h":F
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v15, v21

    if-ltz v21, :cond_17

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v8, v21

    if-ltz v21, :cond_17

    .line 1051
    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v21, v15

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v22, v8

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v15, v23

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v8, v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1058
    .end local v8    # "h":F
    .end local v15    # "w":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1059
    if-eqz v11, :cond_3

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1062
    :cond_3
    if-eqz v5, :cond_4

    .line 1063
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1065
    :cond_4
    if-eqz v4, :cond_5

    .line 1066
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1073
    :cond_5
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1074
    if-eqz v9, :cond_6

    .line 1075
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1079
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    if-nez v6, :cond_7

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    .line 1080
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v12

    .line 1082
    .local v12, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/server/wm/WindowStateAnimator;->applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 1091
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_7
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1092
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1093
    const/16 v21, 0x0

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1094
    const/16 v21, 0x3

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1095
    const/16 v21, 0x1

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1096
    const/16 v21, 0x4

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 1097
    const/16 v21, 0x2

    aget v19, v13, v21

    .line 1098
    .local v19, "x":F
    const/16 v21, 0x5

    aget v20, v13, v21

    .line 1099
    .local v20, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1110
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v19, v21

    if-nez v21, :cond_c

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v20, v21

    if-nez v21, :cond_c

    .line 1112
    :cond_8
    if-eqz v11, :cond_9

    .line 1113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1115
    :cond_9
    if-eqz v5, :cond_a

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1118
    :cond_a
    if-eqz v4, :cond_b

    .line 1119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v21, v0

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1120
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1122
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    .line 1131
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Rect;->offset(II)V

    .line 1136
    :cond_b
    if-eqz v9, :cond_c

    .line 1137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v21, v0

    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1143
    :cond_c
    sget-boolean v21, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-nez v21, :cond_d

    sget-boolean v21, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v21, :cond_f

    .line 1144
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v21, v22, v24

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-nez v21, :cond_f

    .line 1145
    :cond_e
    sget-object v22, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computeShownFrameLocked: Animating "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v23, " mAlpha="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1146
    const-string/jumbo v23, " self="

    .line 1145
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1146
    if-eqz v11, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    .line 1145
    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1147
    const-string/jumbo v23, " attached="

    .line 1145
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1147
    if-nez v5, :cond_1a

    .line 1148
    const-string/jumbo v21, "null"

    .line 1145
    :goto_8
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1149
    const-string/jumbo v23, " app="

    .line 1145
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1149
    if-nez v4, :cond_1b

    const-string/jumbo v21, "null"

    .line 1145
    :goto_9
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1150
    const-string/jumbo v23, " screen="

    .line 1145
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1150
    if-eqz v9, :cond_1c

    .line 1151
    invoke-virtual {v10}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    .line 1145
    :goto_a
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1144
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_f
    return-void

    .line 996
    .end local v6    # "displayId":I
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v10    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v17    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v19    # "x":F
    .end local v20    # "y":F
    :cond_10
    const/4 v5, 0x0

    .local v5, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_0

    .line 998
    .end local v5    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_11
    const/4 v4, 0x0

    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    .line 1008
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v17    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_12
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 1009
    .local v5, "attachedTransformation":Landroid/view/animation/Transformation;
    sget-boolean v21, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v21, :cond_0

    if-eqz v5, :cond_0

    .line 1010
    sget-object v21, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "WP target attached xform: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1014
    .end local v5    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_13
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 1018
    .restart local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_14
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1019
    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    sget-boolean v21, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v21, :cond_1

    if-eqz v4, :cond_1

    .line 1020
    sget-object v21, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "WP target app xform: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1029
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v16    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v18    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v6    # "displayId":I
    .restart local v10    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_15
    const/4 v9, 0x0

    .local v9, "screenAnimation":Z
    goto/16 :goto_5

    .line 1033
    .end local v9    # "screenAnimation":Z
    :cond_16
    if-nez v4, :cond_2

    .line 1032
    if-nez v9, :cond_2

    .line 1153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 1154
    return-void

    .line 1053
    .restart local v7    # "frame":Landroid/graphics/Rect;
    .restart local v8    # "h":F
    .restart local v13    # "tmpFloats":[F
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v15    # "w":F
    :cond_17
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_6

    .line 1056
    .end local v8    # "h":F
    .end local v15    # "w":F
    :cond_18
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_6

    .line 1146
    .restart local v19    # "x":F
    .restart local v20    # "y":F
    :cond_19
    const-string/jumbo v21, "null"

    goto/16 :goto_7

    .line 1148
    :cond_1a
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    goto/16 :goto_8

    .line 1149
    :cond_1b
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    goto/16 :goto_9

    .line 1151
    :cond_1c
    const-string/jumbo v21, "null"

    goto/16 :goto_a

    .line 1155
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v19    # "x":F
    .end local v20    # "y":F
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 1161
    return-void

    .line 1164
    :cond_1e
    sget-boolean v21, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v21, :cond_1f

    .line 1165
    sget-object v21, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computeShownFrameLocked: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1166
    const-string/jumbo v23, " not attached, mAlpha="

    .line 1165
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v23, v0

    .line 1165
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1164
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_1f
    const/4 v12, 0x0

    .line 1170
    .local v12, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_20

    if-nez v6, :cond_20

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v12

    .line 1173
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    :cond_20
    if-eqz v12, :cond_21

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1175
    .restart local v7    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 1176
    .restart local v13    # "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 1178
    .restart local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1179
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1181
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/server/wm/WindowStateAnimator;->applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 1183
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1185
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1186
    const/16 v21, 0x0

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1187
    const/16 v21, 0x3

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1188
    const/16 v21, 0x1

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1189
    const/16 v21, 0x4

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 1190
    const/16 v21, 0x2

    aget v19, v13, v21

    .line 1191
    .restart local v19    # "x":F
    const/16 v21, 0x5

    aget v20, v13, v21

    .line 1192
    .restart local v20    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    .line 1194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 992
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v13    # "tmpFloats":[F
    .end local v14    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v19    # "x":F
    .end local v20    # "y":F
    :goto_b
    return-void

    .line 1196
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->set(II)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v21, v0

    if-nez v21, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v21, v0

    if-eqz v21, :cond_23

    .line 1198
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Point;->offset(II)V

    :cond_23
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->moveShownFrameIfNeed(Lcom/android/server/wm/WindowStateAnimator;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1201
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1203
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1204
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    goto/16 :goto_b
.end method

.method createSurfaceLocked()Lcom/android/server/wm/WindowSurfaceController;
    .locals 15

    .prologue
    .line 696
    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 697
    .local v13, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": called when we had a saved surface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()V

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 708
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 710
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 714
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_10

    .line 716
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 724
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 726
    const/4 v6, 0x4

    .line 727
    .local v6, "flags":I
    iget-object v8, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 729
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    const/16 v6, 0x84

    .line 733
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v13, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v1, v2

    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v7, v13, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v2, v7

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 734
    invoke-direct {p0, v13, v8}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 736
    .local v3, "width":I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 738
    .local v4, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_7

    .line 739
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating surface in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    const-string/jumbo v2, " window "

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 741
    const-string/jumbo v2, " w="

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 741
    const-string/jumbo v2, " h="

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 742
    const-string/jumbo v2, " x="

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 742
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 742
    const-string/jumbo v2, " y="

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 742
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 743
    const-string/jumbo v2, " format="

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 743
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 743
    const-string/jumbo v2, " flags="

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 749
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 752
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 753
    iget v0, v13, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string/jumbo v1, "createSurfaceLocked"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 760
    :cond_8
    :try_start_0
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/4 v11, 0x1

    .line 761
    .local v11, "isHwAccelerated":Z
    :goto_1
    if-eqz v11, :cond_12

    const/4 v5, -0x3

    .line 762
    .local v5, "format":I
    :goto_2
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 765
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_9

    .line 766
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_9

    .line 767
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_9

    .line 768
    iget-object v0, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_9

    .line 771
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 775
    :cond_9
    :goto_3
    new-instance v0, Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 776
    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, p0

    .line 775
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 779
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 781
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_b

    .line 782
    :cond_a
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  CREATE SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 783
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 783
    const-string/jumbo v2, " IN SESSION "

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 784
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 785
    const-string/jumbo v2, ": pid="

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 785
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 785
    const-string/jumbo v2, " format="

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 786
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 786
    const-string/jumbo v2, " flags=0x"

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 787
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 788
    const-string/jumbo v2, " / "

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 802
    const-string/jumbo v2, ", set left="

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 802
    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 802
    const-string/jumbo v2, " top="

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 802
    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 803
    const-string/jumbo v2, ", animLayer="

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 803
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_d

    .line 806
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    const-string/jumbo v1, ","

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    const-string/jumbo v1, ") ("

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 809
    const-string/jumbo v1, "x"

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 809
    const-string/jumbo v1, "), layer="

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 809
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 809
    const-string/jumbo v1, " HIDE"

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    const/4 v1, 0x0

    .line 807
    invoke-static {v13, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 814
    :cond_d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_e

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    const-string/jumbo v2, " format="

    .line 815
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 815
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    const-string/jumbo v2, " layer="

    .line 815
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 815
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    const/4 v2, 0x0

    .line 815
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 821
    :cond_e
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v12

    .line 822
    .local v12, "layerStack":I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1, v2, v12, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionAndLayer(FFII)V

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 825
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Created surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 720
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "format":I
    .end local v6    # "flags":I
    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "isHwAccelerated":Z
    .end local v12    # "layerStack":I
    :cond_10
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto/16 :goto_0

    .line 760
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v6    # "flags":I
    .restart local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 761
    .restart local v11    # "isHwAccelerated":Z
    :cond_12
    :try_start_1
    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "format":I
    goto/16 :goto_2

    .line 772
    :cond_13
    or-int/lit16 v6, v6, 0x400

    goto/16 :goto_3

    .line 795
    .end local v5    # "format":I
    .end local v11    # "isHwAccelerated":Z
    :catch_0
    move-exception v10

    .line 796
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception creating surface"

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 798
    const/4 v0, 0x0

    return-object v0

    .line 790
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 791
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "OutOfResourcesException creating surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "create"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 793
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method deferTransactionUntilParentFrame(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    return-void

    .line 2110
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2111
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    .line 2110
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 2106
    return-void
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 951
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_2

    .line 956
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v1, :cond_1

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v2, "DESTROY PENDING"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    .line 963
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v1, :cond_2

    .line 964
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 973
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 949
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 969
    const-string/jumbo v3, " surface "

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 969
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 970
    const-string/jumbo v3, " session "

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 970
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 970
    const-string/jumbo v3, ": "

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 970
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_0

    .line 682
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 680
    return-void
.end method

.method destroySurface()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2084
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_0

    .line 2085
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 2092
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2093
    :goto_0
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2082
    return-void

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception thrown when destroying surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2089
    const-string/jumbo v3, " surface "

    .line 2088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2089
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2089
    const-string/jumbo v3, " session "

    .line 2088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2089
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 2088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2089
    const-string/jumbo v3, ": "

    .line 2088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2091
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 2092
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_0

    .line 2090
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    .line 2091
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 2092
    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2093
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2090
    throw v1
.end method

.method destroySurfaceLocked()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 875
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 876
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_0

    .line 877
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, v5, :cond_0

    .line 878
    iput-boolean v8, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 882
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->clearHasSavedSurface()V

    .line 884
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v4, :cond_1

    .line 885
    return-void

    .line 888
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 893
    .local v2, "i":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v4, :cond_2

    if-lez v2, :cond_2

    .line 894
    add-int/lit8 v2, v2, -0x1

    .line 895
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 896
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iput-boolean v6, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_0

    .line 900
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " destroying surface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 901
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 901
    const-string/jumbo v6, ", session "

    .line 900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 901
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v4, :cond_a

    .line 903
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v4, v5, :cond_7

    .line 904
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_6

    .line 909
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v4, :cond_5

    .line 911
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v5, "DESTROY PENDING"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 913
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    .line 915
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 930
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v4, :cond_8

    .line 931
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->destoryWindow(Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_9
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-void

    :cond_a
    :try_start_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v4, :cond_c

    .line 924
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v5, "DESTROY"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 926
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception thrown when destroying Window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 935
    const-string/jumbo v6, " surface "

    .line 934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 935
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 935
    const-string/jumbo v6, " session "

    .line 934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 935
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 935
    const-string/jumbo v6, ": "

    .line 934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 935
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    packed-switch v0, :pswitch_data_0

    .line 221
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :pswitch_0
    const-string/jumbo v0, "NO_SURFACE"

    return-object v0

    .line 217
    :pswitch_1
    const-string/jumbo v0, "DRAW_PENDING"

    return-object v0

    .line 218
    :pswitch_2
    const-string/jumbo v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 219
    :pswitch_3
    const-string/jumbo v0, "READY_TO_SHOW"

    return-object v0

    .line 220
    :pswitch_4
    const-string/jumbo v0, "HAS_DRAWN"

    return-object v0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2004
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 2006
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2007
    const-string/jumbo v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2008
    const-string/jumbo v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2009
    const-string/jumbo v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2010
    const-string/jumbo v0, " mStackClip="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2012
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v0, :cond_3

    .line 2013
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2015
    const-string/jumbo v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2016
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 2017
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2019
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_4

    .line 2020
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2022
    :cond_4
    if-eqz p3, :cond_6

    .line 2023
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2025
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2026
    const-string/jumbo v0, " last="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2027
    const-string/jumbo v0, " mHasClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2028
    const-string/jumbo v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2030
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2031
    const-string/jumbo v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2033
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2036
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_7

    .line 2037
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2040
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_9

    .line 2041
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2042
    const-string/jumbo v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2044
    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    .line 2045
    :cond_a
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2046
    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2047
    const-string/jumbo v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2049
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    .line 2050
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2051
    const-string/jumbo v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2052
    const-string/jumbo v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2053
    const-string/jumbo v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2054
    const-string/jumbo v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2056
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_e

    .line 2057
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimationStartDelayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2003
    :cond_e
    return-void

    .line 2044
    :cond_f
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    goto/16 :goto_0
.end method

.method endDelayingAnimationStart()V
    .locals 1

    .prologue
    .line 2133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    .line 2132
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 5

    .prologue
    .line 613
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    .line 614
    .local v1, "startingWindow":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 615
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing drawing window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 616
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    move-result v0

    .line 621
    .local v0, "layoutNeeded":Z
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 622
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_2

    .line 623
    :cond_1
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 624
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 626
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Draw state now committed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_3
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 629
    const/4 v0, 0x1

    .line 632
    .end local v0    # "layoutNeeded":Z
    :cond_4
    return v0

    .line 613
    .end local v1    # "startingWindow":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "startingWindow":Z
    goto/16 :goto_0
.end method

.method finishExit()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 528
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_0

    .line 529
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "finishExit in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 530
    const-string/jumbo v6, ": exiting="

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 530
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 531
    const-string/jumbo v6, " remove="

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 531
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 532
    const-string/jumbo v6, " windowAnimating="

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 532
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    move-result v6

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 536
    new-instance v0, Lcom/android/server/wm/WindowList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowList;-><init>(Lcom/android/server/wm/WindowList;)V

    .line 537
    .local v0, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 538
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 537
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 542
    .end local v0    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v3    # "i":I
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v4, :cond_2

    .line 543
    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 544
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 547
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_2

    .line 549
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    move-result v4

    if-nez v4, :cond_3

    .line 557
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_3

    .line 558
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_3

    .line 559
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 563
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_4

    .line 564
    return-void

    .line 567
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 568
    return-void

    .line 571
    :cond_5
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_7

    :cond_6
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exit animation finished in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": remove="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 577
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    .line 578
    .local v2, "hasSurface":Z
    if-eqz v2, :cond_8

    .line 579
    const-string/jumbo v4, "finishExit"

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 586
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_a

    .line 587
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 597
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v7, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 598
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 527
    return-void

    .line 589
    :cond_a
    if-eqz v2, :cond_b

    .line 590
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v4, :cond_9

    .line 593
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v7, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    goto :goto_2

    .line 550
    .end local v2    # "hasSurface":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method getShown()Z
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    .line 2079
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v0

    .line 870
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hide(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideInTransaction(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->hideWindow(Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_0
    return-void
.end method

.method isAnimationSet()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationStarting()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isDummyAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 346
    :cond_0
    return v0
.end method

.method isWaitingForOpening()Z
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWindowAnimationSet()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markPreservedSurfaceForDestroy()V
    .locals 2

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method performShowLocked()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 1771
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1772
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hiding "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", belonging to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 1774
    return v5

    .line 1776
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_3

    .line 1777
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_3

    .line 1778
    :cond_2
    sget-object v6, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performShow on "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1779
    const-string/jumbo v7, ": mDrawState="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v7

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1779
    const-string/jumbo v7, " readyForDisplay="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1780
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v7

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1781
    const-string/jumbo v7, " starting="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1781
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_9

    move v3, v4

    .line 1778
    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1782
    const-string/jumbo v7, " during animation: policyVis="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1782
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1783
    const-string/jumbo v7, " attHidden="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1783
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    const-string/jumbo v7, " tok.hiddenRequested="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1785
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1778
    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    const-string/jumbo v7, " tok.hidden="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1787
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 1778
    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1788
    const-string/jumbo v7, " animating="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1788
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1789
    const-string/jumbo v7, " tok animating="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1790
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 1778
    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1790
    const-string/jumbo v7, " Callers="

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1791
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    .line 1778
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_3
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v8, :cond_13

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1794
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_5

    .line 1795
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_5

    .line 1796
    :cond_4
    sget-object v6, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Showing "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1797
    const-string/jumbo v7, " during animation: policyVis="

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1797
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1798
    const-string/jumbo v7, " attHidden="

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1798
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1799
    const-string/jumbo v7, " tok.hiddenRequested="

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1800
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1796
    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1801
    const-string/jumbo v7, " tok.hidden="

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1802
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 1796
    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1803
    const-string/jumbo v7, " animating="

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1803
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1804
    const-string/jumbo v7, " tok animating="

    .line 1796
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1805
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 1796
    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1810
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 1813
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1814
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_7

    .line 1815
    :cond_6
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performShowLocked: mDrawState=HAS_DRAWN in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_7
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1817
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1819
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1820
    .local v2, "i":I
    :cond_8
    :goto_7
    if-lez v2, :cond_10

    .line 1821
    add-int/lit8 v2, v2, -0x1

    .line 1822
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1823
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_8

    .line 1824
    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1825
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_8

    .line 1826
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 1832
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1833
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_8

    .line 1834
    iput-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_7

    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    :cond_9
    move v3, v5

    .line 1781
    goto/16 :goto_0

    :cond_a
    move v3, v5

    .line 1785
    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 1787
    goto/16 :goto_2

    :cond_c
    move v3, v5

    .line 1790
    goto/16 :goto_3

    :cond_d
    move v3, v5

    .line 1800
    goto/16 :goto_4

    :cond_e
    move v3, v5

    .line 1802
    goto/16 :goto_5

    :cond_f
    move v3, v5

    .line 1805
    goto/16 :goto_6

    .line 1840
    .restart local v2    # "i":I
    :cond_10
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v8, :cond_11

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_11

    .line 1841
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v5, p0}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    .line 1844
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_12

    .line 1845
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    .line 1848
    :cond_12
    return v4

    .line 1850
    .end local v2    # "i":I
    :cond_13
    return v5
.end method

.method prepareSurfaceLocked(Z)V
    .locals 13
    .param p1, "recoveringMemory"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1581
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1582
    .local v10, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1583
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_1

    .line 1584
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 1585
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation change skips hidden "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1589
    :cond_1
    return-void

    .line 1599
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1600
    return-void

    .line 1603
    :cond_3
    const/4 v8, 0x0

    .line 1605
    .local v8, "displayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1607
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1609
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_c

    .line 1612
    :cond_4
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_d

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1627
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v0, v1, :cond_5

    .line 1628
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    .line 1636
    :cond_5
    const/4 v8, 0x1

    .line 1637
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1638
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    .line 1639
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1640
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1641
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1642
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1643
    iget v0, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v0, v10, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1644
    iget v0, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v0, v10, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1645
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_6

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1647
    const-string/jumbo v1, "alpha="

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1647
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1647
    const-string/jumbo v1, " layer="

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1647
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1648
    const-string/jumbo v1, " matrix=["

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1648
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1648
    const-string/jumbo v1, "*"

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1648
    iget v1, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1649
    const-string/jumbo v1, ","

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1649
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1649
    const-string/jumbo v1, "*"

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1649
    iget v1, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1650
    const-string/jumbo v1, "]["

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1650
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1650
    const-string/jumbo v1, "*"

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1650
    iget v1, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1651
    const-string/jumbo v1, ","

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1651
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1651
    const-string/jumbo v1, "*"

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1651
    iget v1, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1651
    const-string/jumbo v1, "]"

    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-static {v10, v0, v11}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 1654
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1655
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v4, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v3, v4

    .line 1656
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v5, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v4, v5

    .line 1657
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v6, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v5, v6

    .line 1658
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v7, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v6, v7

    move v7, p1

    .line 1654
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FIFFFFZ)Z

    move-result v9

    .line 1661
    .local v9, "prepared":Z
    if-eqz v9, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 1662
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 1664
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 1665
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1666
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v0, :cond_7

    .line 1667
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 1672
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 1673
    const/16 v2, 0x8

    .line 1672
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1678
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1679
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v12, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1688
    .end local v9    # "prepared":Z
    :cond_9
    :goto_1
    if-eqz v8, :cond_b

    .line 1689
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_a

    .line 1690
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1691
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1692
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v10, v0, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1693
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation continue waiting for draw in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_a
    :goto_2
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v12, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1580
    :cond_b
    return-void

    .line 1611
    :cond_c
    const-string/jumbo v0, "prepareSurfaceLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    goto :goto_1

    .line 1613
    :cond_d
    const-string/jumbo v0, "prepareSurfaceLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 1622
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_9

    .line 1623
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1624
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation change skips hidden "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1624
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1629
    :cond_e
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1630
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1631
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1632
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1633
    iget v0, v10, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v1, v10, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1634
    iget v0, v10, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v1, v10, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1635
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1627
    if-nez v0, :cond_5

    .line 1682
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1683
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareSurface: No changes in animation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1675
    .restart local v9    # "prepared":Z
    :cond_10
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_0

    .line 1696
    .end local v9    # "prepared":Z
    :cond_11
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1697
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation change complete in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method preserveSurfaceLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 658
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_0

    .line 666
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 667
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 668
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 669
    return-void

    .line 671
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v1, "SET FREEZE LAYER"

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    .line 675
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 676
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 677
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 657
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 2071
    return-void
.end method

.method seamlesslyRotateWindow(II)V
    .locals 26
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .prologue
    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 2138
    .local v24, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v0, v24

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_1

    .line 2139
    :cond_0
    return-void

    .line 2142
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 2143
    .local v18, "cropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 2144
    .local v19, "displayRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    .line 2145
    .local v20, "frameRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v8, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    .line 2147
    .local v7, "transform":Landroid/graphics/Matrix;
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v8

    .line 2148
    .local v3, "x":F
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v8

    .line 2149
    .local v4, "y":F
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v0, v8

    move/from16 v25, v0

    .line 2150
    .local v25, "width":F
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v0, v8

    move/from16 v21, v0

    .line 2152
    .local v21, "height":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 2153
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v5, v8

    .line 2154
    .local v5, "displayWidth":F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v6, v8

    .line 2158
    .local v6, "displayHeight":F
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v2

    .line 2159
    .local v2, "deltaRotation":I
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 2176
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowSurfaceController;->getTransformToDisplayInverse()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2177
    add-float v8, v3, v25

    add-float v9, v4, v21

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2178
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2180
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2181
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2182
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2183
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2185
    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    .line 2187
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 2189
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 2194
    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2195
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    .line 2136
    :goto_0
    return-void

    .line 2197
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 2198
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x0

    aget v14, v8, v9

    .line 2201
    .local v14, "DsDx":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x3

    aget v16, v8, v9

    .line 2202
    .local v16, "DtDx":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x1

    aget v15, v8, v9

    .line 2203
    .local v15, "DsDy":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v17, v8, v9

    .line 2204
    .local v17, "DtDy":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x2

    aget v22, v8, v9

    .line 2205
    .local v22, "nx":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x5

    aget v23, v8, v9

    .line 2206
    .local v23, "ny":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v14

    .line 2208
    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v10, v10, v16

    .line 2209
    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v15

    .line 2210
    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v12, v12, v17

    const/4 v13, 0x0

    .line 2207
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 312
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    .line 311
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;I)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "stackClip"    # I

    .prologue
    .line 308
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    .line 307
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;JI)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "startTime"    # J
    .param p4, "stackClip"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Setting animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 278
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 284
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 285
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 293
    if-eqz v0, :cond_2

    const-string/jumbo v3, "plugin.luckymoney.ui.LuckyMoney"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 300
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 301
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v4, :cond_3

    :goto_1
    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 302
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 303
    iput-wide p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 304
    iput p4, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    .line 272
    return-void

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 301
    goto :goto_1
.end method

.method setMoveAnimation(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const v2, #android:anim@window_move_from_decor#t

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    .line 2102
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    .line 2103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    .line 2097
    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1757
    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    .line 1755
    return-void
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1764
    return-void

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 1762
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 19
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    .line 1450
    .local v16, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    .line 1453
    .local v14, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1457
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1458
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1460
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 1461
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1463
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    move/from16 v17, v0

    .line 1464
    .local v17, "wasForceScaled":Z
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    move/from16 v18, v0

    .line 1478
    .local v18, "wasSeamlesslyRotated":Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v2, :cond_e

    .line 1479
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1479
    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setSizeInTransaction(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 1484
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v2, :cond_f

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v2, :cond_10

    :cond_3
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    move-result v13

    .line 1493
    .local v13, "surfaceWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    move-result v12

    .line 1495
    .local v12, "surfaceHeight":F
    if-eqz v14, :cond_4

    iget-object v2, v14, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getForceScaleToCrop()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v2, :cond_11

    .line 1496
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int v9, v2, v3

    .line 1497
    .local v9, "hInsets":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v15, v2, v3

    .line 1498
    .local v15, "vInsets":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v2, :cond_6

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1503
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v9

    int-to-float v2, v2

    int-to-float v3, v9

    sub-float v3, v13, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v15

    int-to-float v2, v2

    int-to-float v3, v15

    sub-float v3, v12, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v10, v2

    .line 1510
    .local v10, "posX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v11, v2

    .line 1518
    .local v11, "posY":I
    int-to-float v2, v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v10, v2

    .line 1519
    int-to-float v2, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v11, v2

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1522
    int-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1521
    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    float-to-int v3, v13

    float-to-int v4, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1536
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 1549
    .end local v9    # "hInsets":I
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    .end local v15    # "vInsets":I
    :cond_7
    :goto_3
    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v2, :cond_12

    .line 1550
    :cond_8
    if-eqz v18, :cond_9

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v2, :cond_12

    .line 1555
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 1556
    .local v8, "clipRect":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1557
    const/4 v8, 0x0

    .line 1558
    .local v8, "clipRect":Landroid/graphics/Rect;
    iget-object v2, v14, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    .line 1560
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    neg-int v5, v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    neg-int v6, v6

    .line 1559
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1563
    .end local v8    # "clipRect":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v2, :cond_b

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v8, v2, v1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v3, v4

    .line 1566
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v4, v5

    .line 1567
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v5, v6

    .line 1568
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v6, v7

    move/from16 v7, p1

    .line 1565
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    .line 1571
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v2, :cond_c

    .line 1572
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    .line 1574
    const/4 v4, 0x4

    .line 1573
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1575
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    .line 1448
    :cond_c
    return-void

    .line 1454
    .end local v12    # "surfaceHeight":F
    .end local v13    # "surfaceWidth":F
    .end local v17    # "wasForceScaled":Z
    .end local v18    # "wasSeamlesslyRotated":Z
    :cond_d
    return-void

    .line 1482
    .restart local v17    # "wasForceScaled":Z
    .restart local v18    # "wasSeamlesslyRotated":Z
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto/16 :goto_0

    .line 1484
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1488
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1538
    .restart local v12    # "surfaceHeight":F
    .restart local v13    # "surfaceWidth":F
    :cond_11
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v2, :cond_7

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto/16 :goto_3

    .line 1551
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setGeometryAppliesWithResizeInTransaction(Z)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    goto/16 :goto_4
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1706
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return-void

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1704
    return-void
.end method

.method setWallpaperOffset(Landroid/graphics/Point;)V
    .locals 8
    .param p1, "shownPosition"    # Landroid/graphics/Point;

    .prologue
    .line 1713
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1714
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    .line 1715
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1718
    .local v3, "top":I
    :try_start_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1720
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    .line 1721
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    .line 1720
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1722
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1723
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1729
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1730
    const-string/jumbo v5, "<<< CLOSE TRANSACTION setWallpaperOffset"

    .line 1729
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_1
    :goto_0
    return-void

    .line 1724
    :catch_0
    move-exception v1

    .line 1725
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1726
    const-string/jumbo v6, " pos=("

    .line 1725
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1726
    const-string/jumbo v6, ","

    .line 1725
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1726
    const-string/jumbo v6, ")"

    .line 1725
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1728
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1729
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1730
    const-string/jumbo v5, "<<< CLOSE TRANSACTION setWallpaperOffset"

    .line 1729
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1727
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 1728
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1729
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    .line 1730
    const-string/jumbo v6, "<<< CLOSE TRANSACTION setWallpaperOffset"

    .line 1729
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_2
    throw v4
.end method

.method startDelayingAnimationStart()V
    .locals 1

    .prologue
    .line 2129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    .line 2128
    return-void
.end method

.method stepAnimationLocked(J)Z
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 397
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 398
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 399
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 402
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    .line 403
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 404
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 405
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v3, :cond_1

    .line 406
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_0

    .line 407
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    const-string/jumbo v5, " @ "

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    const-string/jumbo v5, ": ww="

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 409
    const-string/jumbo v5, " wh="

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 409
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 410
    const-string/jumbo v5, " dx="

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 410
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 410
    const-string/jumbo v5, " dy="

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 410
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    const-string/jumbo v5, " scale="

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v5

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 413
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    if-eqz v3, :cond_2

    .line 414
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    .line 415
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 416
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    .line 415
    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 421
    :goto_0
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    .line 422
    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    .line 423
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 424
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 423
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 426
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 427
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 429
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_4

    .line 430
    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 432
    return v11

    .line 418
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 419
    iget v7, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v8, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 418
    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    :cond_3
    move-wide v4, p1

    .line 425
    goto :goto_1

    .line 435
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_4
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_5

    .line 436
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finished animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 437
    const-string/jumbo v5, " @ "

    .line 436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_5
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 441
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_7

    .line 442
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_7

    .line 450
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 451
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 452
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 453
    return v6

    .line 454
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-eqz v3, :cond_12

    .line 457
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 467
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_14

    .line 472
    :cond_9
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_a

    .line 473
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Animation done in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": exiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    const-string/jumbo v5, ", reportedVisible="

    .line 473
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 475
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 473
    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_a
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 478
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 479
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 480
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 481
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_b

    .line 482
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 483
    iput-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 485
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_c

    .line 486
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v10, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 488
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 489
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    move-result v4

    .line 488
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 490
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stepping win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " anim layer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_d
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 492
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 493
    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    .line 494
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 495
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 496
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_16

    .line 497
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 498
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_16

    .line 499
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 496
    if-eqz v3, :cond_16

    .line 500
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_16

    .line 501
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finish starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 502
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 501
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 502
    const-string/jumbo v5, ": first real window done animating"

    .line 501
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 513
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 514
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 515
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 516
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_10

    .line 517
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 518
    const-string/jumbo v4, "WindowStateAnimator"

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    .line 517
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 520
    :cond_10
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_11

    .line 521
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 524
    :cond_11
    return v6

    .line 458
    .end local v1    # "displayId":I
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 459
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto/16 :goto_2

    .line 461
    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_8

    .line 464
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto/16 :goto_2

    .line 468
    :cond_14
    return v6

    :cond_15
    move v3, v6

    .line 475
    goto/16 :goto_3

    .line 505
    :cond_16
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_f

    .line 508
    if-eqz v0, :cond_f

    .line 509
    iput-boolean v11, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2063
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2064
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2065
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2066
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 2067
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2068
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1742
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v5, :cond_0

    .line 1743
    return v3

    .line 1745
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1746
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v2, v4

    .line 1747
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    const/4 v1, -0x3

    .line 1748
    .local v1, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v1, v5, :cond_4

    .line 1749
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1750
    return v4

    .end local v1    # "format":I
    .end local v2    # "isHwAccelerated":Z
    :cond_1
    move v2, v3

    .line 1746
    goto :goto_0

    .line 1747
    .restart local v2    # "isHwAccelerated":Z
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .restart local v1    # "format":I
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1749
    goto :goto_2

    .line 1752
    :cond_4
    return v3
.end method

.method updateSurfaceWindowCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "finalClipRect"    # Landroid/graphics/Rect;
    .param p3, "recoveringMemory"    # Z

    .prologue
    .line 1350
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfaceWindowCrop: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    const-string/jumbo v2, " clipRect="

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    const-string/jumbo v2, " finalClipRect="

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    if-eqz p1, :cond_3

    .line 1353
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1355
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    .line 1360
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1361
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1362
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    .line 1363
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 1364
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    .line 1349
    :cond_2
    return-void

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    goto :goto_0
.end method

.method flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    return-object v0
.end method
