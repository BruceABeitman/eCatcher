.class public abstract Lcom/glympse/android/core/CoreFactory;
.super Ljava/lang/Object;
.source "CoreFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/HalFactory;->createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;
    .registers 3

    invoke-static {p0, p1}, Lcom/glympse/android/hal/HalFactory;->createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createLinkedList()Lcom/glympse/android/hal/GLinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/glympse/android/hal/GLinkedList;

    invoke-direct {v0}, Lcom/glympse/android/hal/GLinkedList;-><init>()V

    return-object v0
.end method

.method public static createLocation(DD)Lcom/glympse/android/core/GLocation;
    .registers 16

    const/high16 v7, 0x7fc0

    new-instance v0, Lcom/glympse/android/lib/Location;

    const-wide/16 v1, 0x0

    move-wide v3, p0

    move-wide v5, p2

    move v8, v7

    move v9, v7

    move v10, v7

    move v11, v7

    invoke-direct/range {v0 .. v11}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V

    return-object v0
.end method

.method public static createLocation(JDDFFFFF)Lcom/glympse/android/core/GLocation;
    .registers 23

    new-instance v0, Lcom/glympse/android/lib/Location;

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V

    return-object v0
.end method

.method public static createPrimitive()Lcom/glympse/android/core/GPrimitive;
    .registers 1

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0}, Lcom/glympse/android/lib/Primitive;-><init>()V

    return-object v0
.end method

.method public static createPrimitive(D)Lcom/glympse/android/core/GPrimitive;
    .registers 3

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, p0, p1}, Lcom/glympse/android/lib/Primitive;-><init>(D)V

    return-object v0
.end method

.method public static createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, p0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    return-object v0
.end method

.method public static createPrimitive(J)Lcom/glympse/android/core/GPrimitive;
    .registers 3

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, p0, p1}, Lcom/glympse/android/lib/Primitive;-><init>(J)V

    return-object v0
.end method

.method public static createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, p0}, Lcom/glympse/android/lib/Primitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, p0}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V

    return-object v0
.end method

.method public static createProfile(IDDIZ)Lcom/glympse/android/core/GLocationProfile;
    .registers 8

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;
    .registers 8

    invoke-static/range {p0 .. p6}, Lcom/glympse/android/lib/LibFactory;->createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;

    move-result-object v0

    return-object v0
.end method

.method public static createRegion(DDDLjava/lang/String;)Lcom/glympse/android/core/GRegion;
    .registers 8

    invoke-static/range {p0 .. p6}, Lcom/glympse/android/lib/LibFactory;->createRegion(DDDLjava/lang/String;)Lcom/glympse/android/core/GRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createStorage(Ljava/lang/Object;Ljava/lang/String;)Lcom/glympse/android/core/GStorageUnit;
    .registers 3

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/glympse/android/lib/LibFactory;->createStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/core/GStorageUnit;

    move-result-object v0

    return-object v0
.end method

.method public static createString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static createVector()Lcom/glympse/android/hal/GVector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    return-object v0
.end method

.method public static getOsName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
