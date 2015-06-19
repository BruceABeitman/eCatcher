.class public final Lcom/instagram/api/g/e;
.super Ljava/lang/Object;
.source "IgTraceTokenFilter.java"

# interfaces
.implements Lcom/instagram/common/e/a/f;


# static fields
.field public static final a:Lcom/instagram/api/g/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/api/g/e;

    invoke-direct {v0}, Lcom/instagram/api/g/e;-><init>()V

    sput-object v0, Lcom/instagram/api/g/e;->a:Lcom/instagram/api/g/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/instagram/api/g/b;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V

    invoke-static {p1, p2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
