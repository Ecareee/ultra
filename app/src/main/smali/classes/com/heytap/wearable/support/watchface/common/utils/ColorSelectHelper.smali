.class public Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAIN_COLOR_CONVERT:Landroid/util/SparseIntArray;

.field private static final MAIN_COLOR_CONVERT_B:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "ColorSelectHelper"


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;->MAIN_COLOR_CONVERT:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;->MAIN_COLOR_CONVERT_B:Landroid/util/SparseIntArray;

    const-string v2, "#FF6E5A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#EF3615"

    const-string v5, "#FF9450"

    .line 1
    invoke-static {v4, v0, v3, v5}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#E16400"

    const-string v6, "#FEDF43"

    invoke-static {v4, v0, v3, v6}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#F09800"

    const-string v7, "#FFFF8D"

    invoke-static {v4, v0, v3, v7}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#BBC400"

    const-string v8, "#F0FF57"

    invoke-static {v4, v0, v3, v8}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#94BC00"

    const-string v9, "#B2FF59"

    invoke-static {v4, v0, v3, v9}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#3FCB00"

    const-string v10, "#74ED7C"

    invoke-static {v4, v0, v3, v10}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00BB86"

    const-string v11, "#64FFDB"

    invoke-static {v4, v0, v3, v11}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00BE9C"

    const-string v12, "#0EF5F5"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00B4C1"

    const-string v12, "#3FCCFF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#0178D0"

    const-string v12, "#519EFF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#0059D3"

    const-string v12, "#6074FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#1F3CE2"

    const-string v12, "#9355FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#5A0FDD"

    const-string v12, "#E040FB"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#AF00C0"

    const-string v12, "#F470BE"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#CF0059"

    const-string v12, "#F5618D"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#DB0D0D"

    const-string v12, "#FF3D00"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#9A2300"

    const-string v12, "#FD7A00"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#A55900"

    const-string v12, "#FEB407"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#ED7F00"

    const-string v12, "#FDD15B"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#A6A900"

    const-string v12, "#D3F320"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#7FC900"

    const-string v12, "#7CF259"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#32C000"

    const-string v12, "#1CD369"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00AD4E"

    const-string v12, "#1DE9B6"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00A083"

    const-string v12, "#00D9FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#009AA5"

    const-string v12, "#12B5FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#0066B2"

    const-string v12, "#2978FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00439F"

    const-string v12, "#3D5AFE"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#0922B0"

    const-string v12, "#651FFF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#370098"

    const-string v12, "#C700F9"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#840091"

    const-string v12, "#E3489E"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#A20046"

    const-string v12, "#E43260"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#A90029"

    const-string v12, "#DB2319"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#951E00"

    const-string v12, "#E35100"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#A53100"

    const-string v12, "#FD9500"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#B16900"

    const-string v12, "#F3C610"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#8C9A00"

    const-string v12, "#B8E100"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#649F00"

    const-string v12, "#7CCC00"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#0E9900"

    const-string v12, "#1AAE59"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#007E39"

    const-string v12, "#00BFA5"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#008481"

    const-string v12, "#00B0FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#006D97"

    const-string v12, "#048BDC"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#003C9C"

    const-string v12, "#2962FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00329F"

    const-string v12, "#2140E9"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#00259C"

    const-string v12, "#5900D6"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#320089"

    const-string v12, "#A200FF"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#670091"

    const-string v12, "#BF2279"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#740043"

    const-string v12, "#B22843"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#870026"

    const-string v12, "#A1887F"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v4, "#795548"

    const-string v12, "#8A9C78"

    invoke-static {v4, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v12, "#677A54"

    const-string v13, "#78909C"

    invoke-static {v12, v0, v3, v13}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v13, "#546E7A"

    const-string v14, "#8B91AE"

    invoke-static {v13, v0, v3, v14}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v14, "#555C7A"

    const-string v15, "#A17FA1"

    invoke-static {v14, v0, v3, v15}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v15, "#794879"

    move-object/from16 v16, v11

    const-string v11, "#ECF0F1"

    invoke-static {v15, v0, v3, v11}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    const-string v11, "#6F7376"

    invoke-static {v11, v0, v3, v4}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    move-object/from16 v17, v10

    const-string v10, "#4E342E"

    invoke-static {v10, v0, v3, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    move-object/from16 v18, v9

    const-string v9, "#434F37"

    invoke-static {v9, v0, v3, v13}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    move-object/from16 v19, v8

    const-string v8, "#37474F"

    invoke-static {v8, v0, v3, v14}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    move-object/from16 v20, v7

    const-string v7, "#2F354F"

    invoke-static {v7, v0, v3, v15}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    move-object/from16 v21, v6

    const-string v6, "#4E2E4E"

    invoke-static {v6, v0, v3, v11}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    move-object/from16 v22, v1

    const-string v1, "#404040"

    invoke-static {v1, v0, v3, v10}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    invoke-static {v4, v0, v3, v9}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    invoke-static {v12, v0, v3, v8}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    invoke-static {v13, v0, v3, v7}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    invoke-static {v14, v0, v3, v6}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    invoke-static {v15, v0, v3, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v3

    invoke-static {v11, v0, v3, v2}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v2, "#FFFFFF"

    move-object/from16 v3, v22

    invoke-static {v2, v3, v0, v5}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    move-object/from16 v5, v21

    invoke-static {v2, v3, v0, v5}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v5, "#000000"

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    move-object/from16 v1, v19

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    move-object/from16 v1, v17

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    move-object/from16 v1, v16

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#0EF5F5"

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#3FCCFF"

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#519EFF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#6074FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#9355FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#E040FB"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#F470BE"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#F5618D"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#FF3D00"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#FD7A00"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#FEB407"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#FDD15B"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#D3F320"

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#7CF259"

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#1CD369"

    invoke-static {v5, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#1DE9B6"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#00D9FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#12B5FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#2978FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#3D5AFE"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#651FFF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#C700F9"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#E3489E"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#E43260"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#DB2319"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#E35100"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#FD9500"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#F3C610"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#B8E100"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#7CCC00"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#1AAE59"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#00BFA5"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#00B0FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#048BDC"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#2962FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#2140E9"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#5900D6"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#A200FF"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#BF2279"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#B22843"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#A1887F"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#8A9C78"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#78909C"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#8B91AE"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#A17FA1"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    const-string v1, "#ECF0F1"

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v5, v3, v0, v4}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v12}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v13}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v14}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v15}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v11}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v10}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v9}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v8}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v7}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0, v6}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    move-object/from16 v1, v21

    invoke-static {v2, v3, v0, v1}, Landroidx/appcompat/app/d;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBCategoryConvertColor(I)I
    .locals 3

    sget-object v0, Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;->MAIN_COLOR_CONVERT_B:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getBCategoryConvertColor] --> originColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,convert="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ColorSelectHelper"

    invoke-static {v1, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getConvertColor(I)I
    .locals 3

    sget-object v0, Lcom/heytap/wearable/support/watchface/common/utils/ColorSelectHelper;->MAIN_COLOR_CONVERT:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getConvertColor] --> originColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,convert="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ColorSelectHelper"

    invoke-static {v1, p0}, Lcom/heytap/wearable/support/watchface/common/log/SdkDebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
