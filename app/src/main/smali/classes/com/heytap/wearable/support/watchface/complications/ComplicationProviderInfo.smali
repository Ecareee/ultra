.class public Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final KEY_PROVIDER_COMPONENT:Ljava/lang/String; = "provider_component"

.field private static final KEY_PROVIDER_ICON:Ljava/lang/String; = "provider_icon"

.field private static final KEY_PROVIDER_MODE:Ljava/lang/String; = "provider_mode"

.field private static final KEY_PROVIDER_NAME:Ljava/lang/String; = "provider_name"

.field private static final KEY_PROVIDER_SINGLE_COLOR_ICON:Ljava/lang/String; = "provider_single_color_icon"

.field private static final KEY_SUPPORT_VERSION:Ljava/lang/String; = "support_version"


# instance fields
.field public final appName:Ljava/lang/String;

.field public final appWidgetVersion:I

.field public final mode:I

.field public final providerComponent:Ljava/lang/String;

.field public final providerIcon:Landroid/graphics/drawable/Icon;

.field public final providerName:Ljava/lang/String;

.field public final providerSingleColorIcon:Landroid/graphics/drawable/Icon;

.field public final supportWidgetVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo$1;

    invoke-direct {v0}, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo$1;-><init>()V

    sput-object v0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appName:Ljava/lang/String;

    const-string v0, "provider_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerName:Ljava/lang/String;

    const-string v0, "provider_component"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerComponent:Ljava/lang/String;

    const-string v0, "provider_icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "provider_single_color_icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerSingleColorIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "provider_mode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->mode:I

    const-string v0, "support_version"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->supportWidgetVersion:I

    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appWidgetVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerComponent:Ljava/lang/String;

    iput-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerIcon:Landroid/graphics/drawable/Icon;

    iput-object p5, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerSingleColorIcon:Landroid/graphics/drawable/Icon;

    iput p6, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->mode:I

    iput p7, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->supportWidgetVersion:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appWidgetVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerComponent:Ljava/lang/String;

    iput-object p4, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerIcon:Landroid/graphics/drawable/Icon;

    iput-object p5, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerSingleColorIcon:Landroid/graphics/drawable/Icon;

    iput p6, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->mode:I

    iput p7, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->supportWidgetVersion:I

    iput p8, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appWidgetVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ComplicationProviderInfo{appName=\'"

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/d;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", providerName=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerName:Ljava/lang/String;

    const-string v3, ", providerComponent=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerComponent:Ljava/lang/String;

    const-string v3, ", providerIcon="

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/app/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->supportWidgetVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appWidgetVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appWidgetVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appName:Ljava/lang/String;

    const-string v1, "app_name"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerName:Ljava/lang/String;

    const-string v1, "provider_name"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerComponent:Ljava/lang/String;

    const-string v1, "provider_component"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "provider_icon"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->providerSingleColorIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "provider_single_color_icon"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->mode:I

    const-string v1, "provider_mode"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->supportWidgetVersion:I

    const-string v1, "support_version"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/heytap/wearable/support/watchface/complications/ComplicationProviderInfo;->appWidgetVersion:I

    const-string v1, "app_version"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
