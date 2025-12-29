.class public final Lcom/google/android/systemui/smartspace/PagerDots;
.super Landroid/view/View;
.source "go/retraceme af8e0b46c0cb0ee2c99e9b6d0c434e5c0b686fd9230eaab7fb9a40e3a9d0cf6f"


# instance fields
.field public final activeDotSize:F

.field public currentPageIndex:I

.field public currentPositionIndex:I

.field public currentPositionOffset:F

.field public final dotMargin:F

.field public final dotRadius:F

.field public final dotSize:F

.field public numPages:I

.field public final paint:Landroid/graphics/Paint;

.field public primaryColor:I

.field public final tempRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/PagerDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 3
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 4
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionIndex:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a7d    # @dimen/page_indicator_dot_size '6.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotSize:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a7c    # @dimen/page_indicator_dot_margin '3.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotMargin:F

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float v0, p1, p2

    .line 7
    iput v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->activeDotSize:F

    div-float/2addr p1, p2

    .line 8
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotRadius:F

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->tempRectF:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036    # @android:attr/textColorPrimary

    .line 11
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iput p2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->primaryColor:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget p2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->primaryColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic getNumPages$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getPaint$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    move-result v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 12
    move-result v1

    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    if-eqz v1, :cond_1

    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 24
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    const/high16 v4, 0x3f000000    # 0.5f

    .line 29
    mul-float/2addr v3, v4

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 36
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 41
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget v1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->activeDotSize:F

    .line 49
    iget v2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotSize:F

    .line 51
    sub-float/2addr v1, v2

    .line 53
    iget v3, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionOffset:F

    .line 54
    mul-float/2addr v1, v3

    .line 56
    iget v5, p0, Lcom/google/android/systemui/smartspace/PagerDots;->primaryColor:I

    .line 57
    shr-int/lit8 v5, v5, 0x18

    .line 59
    and-int/lit16 v5, v5, 0xff

    .line 61
    int-to-float v6, v5

    .line 63
    const v7, 0x3ecccccd    # 0.4f

    .line 64
    mul-float/2addr v6, v7

    .line 67
    float-to-int v6, v6

    .line 68
    sub-int v7, v5, v6

    .line 69
    int-to-float v7, v7

    .line 71
    mul-float/2addr v7, v3

    .line 72
    float-to-int v3, v7

    .line 73
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/PagerDots;->tempRectF:Landroid/graphics/RectF;

    .line 74
    iput v4, v7, Landroid/graphics/RectF;->top:F

    .line 76
    iput v2, v7, Landroid/graphics/RectF;->bottom:F

    .line 78
    iput v4, v7, Landroid/graphics/RectF;->left:F

    .line 80
    iget v2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 82
    const/4 v4, 0x0

    .line 84
    :goto_1
    if-ge v4, v2, :cond_6

    .line 85
    iget v7, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionIndex:I

    .line 87
    if-ne v4, v7, :cond_2

    .line 89
    iget v8, p0, Lcom/google/android/systemui/smartspace/PagerDots;->activeDotSize:F

    .line 91
    sub-float/2addr v8, v1

    .line 93
    goto :goto_2

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :cond_2
    add-int/lit8 v8, v7, 0x1

    .line 97
    if-ne v4, v8, :cond_3

    .line 99
    iget v8, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotSize:F

    .line 101
    add-float/2addr v8, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget v8, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotSize:F

    .line 105
    :goto_2
    if-ne v4, v7, :cond_4

    .line 107
    sub-int v7, v5, v3

    .line 109
    goto :goto_3

    .line 111
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 112
    if-ne v4, v7, :cond_5

    .line 114
    add-int v7, v6, v3

    .line 116
    goto :goto_3

    .line 118
    :cond_5
    move v7, v6

    .line 119
    :goto_3
    iget-object v9, p0, Lcom/google/android/systemui/smartspace/PagerDots;->tempRectF:Landroid/graphics/RectF;

    .line 120
    iget v10, v9, Landroid/graphics/RectF;->left:F

    .line 122
    add-float/2addr v10, v8

    .line 124
    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 125
    iget-object v8, p0, Lcom/google/android/systemui/smartspace/PagerDots;->paint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/PagerDots;->tempRectF:Landroid/graphics/RectF;

    .line 132
    iget v8, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotRadius:F

    .line 134
    iget-object v9, p0, Lcom/google/android/systemui/smartspace/PagerDots;->paint:Landroid/graphics/Paint;

    .line 136
    invoke-virtual {p1, v7, v8, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/PagerDots;->tempRectF:Landroid/graphics/RectF;

    .line 141
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 143
    iget v9, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotMargin:F

    .line 145
    add-float/2addr v8, v9

    .line 147
    iput v8, v7, Landroid/graphics/RectF;->left:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 150
    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 153
    return-void

    .line 156
    :goto_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 157
    throw p0
    .line 160
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result v0

    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    if-ne v0, v2, :cond_0

    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 26
    int-to-float p1, p1

    .line 28
    iget v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotMargin:F

    .line 29
    iget v3, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotSize:F

    .line 31
    add-float/2addr v0, v3

    .line 33
    mul-float/2addr v0, p1

    .line 34
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->activeDotSize:F

    .line 35
    add-float/2addr v0, p1

    .line 37
    float-to-int p1, v0

    .line 38
    :goto_0
    add-int/2addr v1, p1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    move-result p1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result v0

    .line 47
    add-int/2addr v0, p1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 49
    move-result p1

    .line 52
    if-ne p1, v2, :cond_1

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 55
    move-result p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->dotSize:F

    .line 60
    float-to-int p1, p1

    .line 62
    :goto_1
    add-int/2addr v0, p1

    .line 63
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 64
    return-void
    .line 67
.end method

.method public final setNumPages(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-gtz p1, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Total number of pages invalid: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ". Assuming 1 page."

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    const-string v1, "SsPagerDots"

    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 37
    :goto_0
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 39
    const/4 v1, 0x0

    .line 41
    if-gez p1, :cond_3

    .line 42
    if-eqz p2, :cond_2

    .line 44
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 46
    sub-int/2addr p1, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move p1, v1

    .line 50
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/PagerDots;->updateCurrentPageIndex(I)V

    .line 51
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 54
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionIndex:I

    .line 56
    goto :goto_3

    .line 58
    :cond_3
    iget v2, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 59
    if-lt p1, v2, :cond_5

    .line 61
    if-eqz p2, :cond_4

    .line 63
    move v2, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    sub-int/2addr v2, v0

    .line 67
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/PagerDots;->updateCurrentPageIndex(I)V

    .line 68
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 71
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPositionIndex:I

    .line 73
    :cond_5
    :goto_3
    iget p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 75
    const/4 p2, 0x2

    .line 77
    if-ge p1, p2, :cond_6

    .line 78
    const/16 p1, 0x8

    .line 80
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 82
    goto :goto_4

    .line 85
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 86
    move-result p1

    .line 89
    const/4 p2, 0x4

    .line 90
    if-eq p1, p2, :cond_7

    .line 91
    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    .line 93
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 99
    return-void
    .line 102
.end method

.method public final updateCurrentPageIndex(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 12
    iget v0, p0, Lcom/google/android/systemui/smartspace/PagerDots;->currentPageIndex:I

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/google/android/systemui/smartspace/PagerDots;->numPages:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    const v1, 0x7f13012b    # @string/accessibility_smartspace_page 'Page %1$d of %2$d'

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    return-void
    .line 41
.end method
