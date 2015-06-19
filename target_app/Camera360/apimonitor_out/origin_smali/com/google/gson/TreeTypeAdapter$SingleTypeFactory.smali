.class Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonSerializer;

    :goto_b
    iput-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson/JsonSerializer;

    instance-of v0, p1, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/google/gson/JsonDeserializer;

    :goto_13
    iput-object p1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson/JsonDeserializer;

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2c

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    iput-object p2, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    iput-boolean p3, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    iput-object p4, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void

    :cond_28
    move-object v0, v1

    goto :goto_b

    :cond_2a
    move-object p1, v1

    goto :goto_13

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson/TreeTypeAdapter$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    :cond_1d
    const/4 v7, 0x1

    :goto_1e
    if-eqz v7, :cond_3a

    new-instance v0, Lcom/google/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/TreeTypeAdapter$1;)V

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v7, 0x0

    goto :goto_1e

    :cond_2f
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    goto :goto_1e

    :cond_3a
    move-object v0, v6

    goto :goto_2c
.end method
