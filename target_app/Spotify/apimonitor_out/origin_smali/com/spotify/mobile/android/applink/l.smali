.class public final Lcom/spotify/mobile/android/applink/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/spotify/mobile/android/applink/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/applink/l;->d:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method final a(I)Lcom/spotify/mobile/android/applink/l;
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/applink/l;->c:I

    return-object p0
.end method

.method public final a(Lcom/spotify/mobile/android/applink/c;)Lcom/spotify/mobile/android/applink/l;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/l;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/applink/l;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/applink/l;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/l;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/spotify/mobile/android/applink/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/l;->d:Ljava/util/Vector;

    return-object v0
.end method

.method final d()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/applink/l;->c:I

    return v0
.end method
