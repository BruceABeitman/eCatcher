.class final Lcom/spotify/mobile/android/g/b;
.super Lcom/spotify/mobile/android/g/a;
.source "SourceFile"


# static fields
.field static final a:Lcom/spotify/mobile/android/g/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/g/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/g/b;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/g/b;->a:Lcom/spotify/mobile/android/g/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There\'s nothing to get() from None"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    const v0, 0x2e4de7c

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "None{}"

    return-object v0
.end method
