.class public Lcom/lenovo/anyshare/sdk/internal/bv$a;
.super Ljava/lang/Object;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/content/base/ContentType;",
            "Lcom/lenovo/anyshare/sdk/internal/bo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/lenovo/content/base/ContentType;)Lcom/lenovo/anyshare/sdk/internal/bo;
    .registers 3

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bo;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
    .registers 5

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;

    invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bu$c;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)Lcom/lenovo/anyshare/sdk/internal/bu$c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->SMS:Lcom/lenovo/content/base/ContentType;

    invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bu$e;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)Lcom/lenovo/anyshare/sdk/internal/bu$e;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->MMS:Lcom/lenovo/content/base/ContentType;

    invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bu$d;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)Lcom/lenovo/anyshare/sdk/internal/bu$d;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->CALLLOG:Lcom/lenovo/content/base/ContentType;

    invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bu$b;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)Lcom/lenovo/anyshare/sdk/internal/bu$b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/br;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/br;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bt$a;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$a;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bt$c;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$c;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bt$b;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$b;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bv$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bs;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bs;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
