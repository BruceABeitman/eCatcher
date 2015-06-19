.class public abstract Lcom/spotify/mobile/android/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/k;->a:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/k;->a:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/util/k;->a:Ljava/util/EnumSet;

    return-object v0
.end method

.method public abstract a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<TE;>;",
            "Ljava/util/EnumSet",
            "<TE;>;)V"
        }
    .end annotation
.end method
