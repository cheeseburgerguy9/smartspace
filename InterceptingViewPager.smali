.class public Lcom/google/android/systemui/smartspace/InterceptingViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public mHasPerformedLongPress:Z

.field public mHasPostedLongPress:Z

.field public final mLongPressCallback:Ljava/lang/Runnable;

.field public final mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

.field public final mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic $r8$lambda$6vAQJ0f6VLmz3WVNAaDyfVVrR3U(Lcom/google/android/systemui/smartspace/InterceptingViewPager;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$cOI4bHGf9tdLVbbnEVe-hN0lP4U(Lcom/google/android/systemui/smartspace/InterceptingViewPager;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    const v1, -0x800001

    .line 12
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 13
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    const/4 v1, 0x1

    .line 14
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 15
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mDragInGutterEnabled:Z

    .line 16
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 17
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 18
    new-instance v0, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/viewpager/widget/ViewPager$3;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 20
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->initViewPager(Landroid/content/Context;)V

    .line 21
    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    .line 22
    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    .line 23
    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    .line 3
    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    .line 4
    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final cancelScheduledLongPress()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPostedLongPress:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPostedLongPress:Z

    .line 7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 13
    const v2, 0x7f130bfc    # @string/smartspace_role_desc 'View'

    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 21
    return-object v0
    .line 24
.end method

.method public final handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    if-eq v0, v2, :cond_0

    .line 10
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    .line 28
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPostedLongPress:Z

    .line 31
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Ljava/lang/Runnable;

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 35
    move-result v3

    .line 38
    int-to-long v3, v3

    .line 39
    invoke-virtual {p0, v0, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    .line 43
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    .line 47
    return v2

    .line 50
    :cond_3
    iget v0, p2, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 51
    iget-object p2, p2, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    .line 53
    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-static {p2, p1}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->$r8$lambda$6vAQJ0f6VLmz3WVNAaDyfVVrR3U(Lcom/google/android/systemui/smartspace/InterceptingViewPager;Landroid/view/MotionEvent;)Z

    .line 58
    move-result p1

    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    invoke-static {p2, p1}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->$r8$lambda$cOI4bHGf9tdLVbbnEVe-hN0lP4U(Lcom/google/android/systemui/smartspace/InterceptingViewPager;Landroid/view/MotionEvent;)Z

    .line 63
    move-result p1

    .line 66
    :goto_1
    if-eqz p1, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    .line 69
    return v2

    .line 72
    :cond_4
    return v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
