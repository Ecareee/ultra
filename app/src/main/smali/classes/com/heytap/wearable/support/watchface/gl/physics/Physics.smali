.class public abstract Lcom/heytap/wearable/support/watchface/gl/physics/Physics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;


# direct methods
.method public constructor <init>(Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    return-void
.end method


# virtual methods
.method public createPhysicsVBO()V
    .locals 0

    return-void
.end method

.method public abstract doAction()Z
.end method

.method public abstract getIsActionDone()Z
.end method

.method public getMesh()Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/heytap/wearable/support/watchface/gl/physics/Physics;->mMesh:Lcom/heytap/wearable/support/watchface/gl/shape/Mesh;

    return-object v0
.end method

.method public abstract setIsActionDone(Z)V
.end method

.method public abstract updatePhy()V
.end method
