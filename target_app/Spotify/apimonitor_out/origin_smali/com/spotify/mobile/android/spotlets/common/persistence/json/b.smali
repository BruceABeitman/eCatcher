.class final Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/io/Serializable;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "value"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
        include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
        property = "type"
        use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/Serializable;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "value"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;->a:Ljava/io/Serializable;

    return-void
.end method

.method static a(Ljava/io/Serializable;)Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)",
            "Lcom/spotify/mobile/android/spotlets/common/persistence/json/b",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;-><init>(Ljava/io/Serializable;)V

    return-object v0
.end method
