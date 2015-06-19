.class Lcom/a/a/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/a/a/ad;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/a/a/ad;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/al;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/al;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/al;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/a/al;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/a/a/al;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/a/a/al;->f:Ljava/lang/String;

    iput p7, p0, Lcom/a/a/al;->g:I

    iput-object p8, p0, Lcom/a/a/al;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/a/a/al;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/a/a/al;->j:Lcom/a/a/ad;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
    .registers 9

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    array-length v0, v2

    if-le v0, p2, :cond_15

    invoke-static {v2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_15

    aget-object v4, v2, v0

    if-gt v1, p2, :cond_16

    :cond_15
    return-void

    :cond_16
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method
