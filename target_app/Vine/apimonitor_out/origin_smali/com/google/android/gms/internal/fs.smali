.class public Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ft;


# instance fields
.field public final mN:Ljava/lang/String;

.field final xJ:I

.field final yn:Lcom/google/android/gms/internal/fj;

.field final yo:J

.field final yp:I

.field final yq:Lcom/google/android/gms/internal/fh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/fj;JILjava/lang/String;Lcom/google/android/gms/internal/fh;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fs;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->yn:Lcom/google/android/gms/internal/fj;

    iput-wide p3, p0, Lcom/google/android/gms/internal/fs;->yo:J

    iput p5, p0, Lcom/google/android/gms/internal/fs;->yp:I

    iput-object p6, p0, Lcom/google/android/gms/internal/fs;->mN:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fs;->yq:Lcom/google/android/gms/internal/fh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fj;JI)V
    .registers 13

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fs;-><init>(ILcom/google/android/gms/internal/fj;JILjava/lang/String;Lcom/google/android/gms/internal/fh;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/fs;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/fj;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p2, p3, p4, p5, p6}, Lcom/google/android/gms/internal/fs;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/fh;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fs;-><init>(ILcom/google/android/gms/internal/fj;JILjava/lang/String;Lcom/google/android/gms/internal/fh;)V

    return-void
.end method

.method static a(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/fh;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/fh;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/fs;->ab(Ljava/lang/String;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_15

    invoke-static {p2}, Lcom/google/android/gms/internal/fs;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz p4, :cond_1e

    invoke-static {p4}, Lcom/google/android/gms/internal/fs;->a(Ljava/util/List;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v2, "intent_action"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fs;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    const-string v2, "intent_data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fs;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v2, "intent_activity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fs;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_66

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    const-string v2, "intent_extra_data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fs;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    new-instance v1, Lcom/google/android/gms/internal/fh;

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/fl;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/fl;

    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/gms/internal/fh;-><init>(Ljava/lang/String;Z[Lcom/google/android/gms/internal/fl;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/fj;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/fj;

    const-string v1, ""

    invoke-static {p1}, Lcom/google/android/gms/internal/fs;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/gms/internal/fl;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/fl;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/iw$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/iw$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/internal/iw$a$a;

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    array-length v0, v3

    if-ge v1, v0, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/iw$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iw$a$a;-><init>()V

    aput-object v0, v3, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;

    aget-object v4, v3, v1

    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    aget-object v4, v3, v1

    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    aget-object v4, v3, v1

    iget v0, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I

    iput v0, v4, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_3b
    iput-object v3, v2, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;

    new-instance v0, Lcom/google/android/gms/internal/fl;

    invoke-static {v2}, Lcom/google/android/gms/internal/mf;->d(Lcom/google/android/gms/internal/mf;)[B

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/fq$a;

    const-string v3, "outlinks"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fq$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fq$a;->w(Z)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    const-string v3, ".private:outLinks"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fq$a;->aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    const-string v3, "blob"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fq$a;->Z(Ljava/lang/String;)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq$a;->dL()Lcom/google/android/gms/internal/fq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fl;-><init>([BLcom/google/android/gms/internal/fq;)V

    return-object v0
.end method

.method private static ab(Ljava/lang/String;)Lcom/google/android/gms/internal/fl;
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fq$a;

    const-string v2, "title"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fq$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/fq$a;->I(I)Lcom/google/android/gms/internal/fq$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/fq$a;->x(Z)Lcom/google/android/gms/internal/fq$a;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fq$a;->aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fq$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fq$a;->dL()Lcom/google/android/gms/internal/fq;

    move-result-object v1

    const-string v2, "text1"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/fq;Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Landroid/net/Uri;)Lcom/google/android/gms/internal/fl;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/fq$a;

    const-string v3, "web_url"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fq$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fq$a;->I(I)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fq$a;->w(Z)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fq$a;->aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq$a;->dL()Lcom/google/android/gms/internal/fq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    return-object v0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fl;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fq$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fq$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fq$a;->w(Z)Lcom/google/android/gms/internal/fq$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fq$a;->dL()Lcom/google/android/gms/internal/fq;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/fq;Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_a
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_13} :catch_1c

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fs;->yn:Lcom/google/android/gms/internal/fj;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/gms/internal/fs;->yo:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/fs;->yp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ft;->a(Lcom/google/android/gms/internal/fs;Landroid/os/Parcel;I)V

    return-void
.end method
