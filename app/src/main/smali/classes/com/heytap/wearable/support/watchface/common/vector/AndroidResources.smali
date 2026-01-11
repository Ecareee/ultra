.class Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final clipPath_name:I = 0x0

.field public static final clipPath_pathData:I = 0x1

.field public static final group_name:I = 0x0

.field public static final group_pivotX:I = 0x1

.field public static final group_pivotY:I = 0x2

.field public static final group_rotation:I = 0x5

.field public static final group_scaleX:I = 0x3

.field public static final group_scaleY:I = 0x4

.field public static final group_translateX:I = 0x6

.field public static final group_translateY:I = 0x7

.field public static final path_fillAlpha:I = 0xc

.field public static final path_fillColor:I = 0x1

.field public static final path_name:I = 0x0

.field public static final path_pathData:I = 0x2

.field public static final path_strokeAlpha:I = 0xb

.field public static final path_strokeColor:I = 0x3

.field public static final path_strokeLineCap:I = 0x8

.field public static final path_strokeLineJoin:I = 0x9

.field public static final path_strokeMiterLimit:I = 0xa

.field public static final path_strokeWidth:I = 0x4

.field public static final path_trimPathEnd:I = 0x6

.field public static final path_trimPathOffset:I = 0x7

.field public static final path_trimPathStart:I = 0x5

.field public static final styleable_AnimatedVectorDrawable:[I

.field public static final styleable_AnimatedVectorDrawableTarget:[I

.field public static final styleable_AnimatedVectorDrawableTarget_animation:I = 0x1

.field public static final styleable_AnimatedVectorDrawableTarget_name:I = 0x0

.field public static final styleable_AnimatedVectorDrawable_drawable:I = 0x0

.field public static final styleable_VectorDrawableClipPath:[I

.field public static final styleable_VectorDrawableGroup:[I

.field public static final styleable_VectorDrawablePath:[I

.field public static final styleable_VectorDrawableTypeArray:[I

.field public static final type_array_alpha:I = 0x4

.field public static final type_array_autoMirrored:I = 0x5

.field public static final type_array_height:I = 0x2

.field public static final type_array_name:I = 0x0

.field public static final type_array_tint:I = 0x1

.field public static final type_array_tintMode:I = 0x6

.field public static final type_array_viewportHeight:I = 0x8

.field public static final type_array_viewportWidth:I = 0x7

.field public static final type_array_width:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawableGroup:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawablePath:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_VectorDrawableClipPath:[I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010199

    aput v3, v1, v2

    sput-object v1, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_AnimatedVectorDrawable:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/heytap/wearable/support/watchface/common/vector/AndroidResources;->styleable_AnimatedVectorDrawableTarget:[I

    return-void

    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
    .end array-data

    :array_3
    .array-data 4
        0x1010003
        0x1010405
    .end array-data

    :array_4
    .array-data 4
        0x1010003
        0x10101cd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
