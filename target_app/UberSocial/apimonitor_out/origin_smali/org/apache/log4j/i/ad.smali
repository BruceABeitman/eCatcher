.class public final Lorg/apache/log4j/i/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Class; = null

.field static b:Ljava/lang/Class; = null

.field static c:Ljava/lang/Class; = null

.field static d:Ljava/lang/Class; = null

.field static e:Ljava/lang/Class; = null

.field static f:Ljava/lang/Class; = null

.field static g:Ljava/lang/Class; = null

.field static h:Ljava/lang/Class; = null

.field static i:Ljava/lang/Class; = null

.field static j:Ljava/lang/Class; = null

.field static k:Ljava/lang/Class; = null

.field static l:Ljava/lang/Class; = null

.field static m:Ljava/lang/Class; = null

.field static n:Ljava/lang/Class; = null

.field static o:Ljava/lang/Class; = null

.field static p:Ljava/lang/Class; = null

.field static q:Ljava/lang/Class; = null

.field static r:Ljava/lang/Class; = null

.field private static final s:C = '%'

.field private static final t:I = 0x0

.field private static final u:I = 0x1

.field private static final v:I = 0x3

.field private static final w:I = 0x4

.field private static final x:I = 0x5

.field private static final y:Ljava/util/Map;

.field private static final z:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v1, Ljava/util/HashMap;

    const/16 v0, 0x11

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "c"

    sget-object v0, Lorg/apache/log4j/i/ad;->a:Ljava/lang/Class;

    if-nez v0, :cond_24d

    const-string v0, "org.apache.log4j.i.q"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->a:Ljava/lang/Class;

    :goto_15
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "logger"

    sget-object v0, Lorg/apache/log4j/i/ad;->a:Ljava/lang/Class;

    if-nez v0, :cond_251

    const-string v0, "org.apache.log4j.i.q"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->a:Ljava/lang/Class;

    :goto_26
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "C"

    sget-object v0, Lorg/apache/log4j/i/ad;->b:Ljava/lang/Class;

    if-nez v0, :cond_255

    const-string v0, "org.apache.log4j.i.d"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->b:Ljava/lang/Class;

    :goto_37
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "class"

    sget-object v0, Lorg/apache/log4j/i/ad;->b:Ljava/lang/Class;

    if-nez v0, :cond_259

    const-string v0, "org.apache.log4j.i.d"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->b:Ljava/lang/Class;

    :goto_48
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "d"

    sget-object v0, Lorg/apache/log4j/i/ad;->c:Ljava/lang/Class;

    if-nez v0, :cond_25d

    const-string v0, "org.apache.log4j.i.e"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->c:Ljava/lang/Class;

    :goto_59
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "date"

    sget-object v0, Lorg/apache/log4j/i/ad;->c:Ljava/lang/Class;

    if-nez v0, :cond_261

    const-string v0, "org.apache.log4j.i.e"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->c:Ljava/lang/Class;

    :goto_6a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "F"

    sget-object v0, Lorg/apache/log4j/i/ad;->d:Ljava/lang/Class;

    if-nez v0, :cond_265

    const-string v0, "org.apache.log4j.i.h"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->d:Ljava/lang/Class;

    :goto_7b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "file"

    sget-object v0, Lorg/apache/log4j/i/ad;->d:Ljava/lang/Class;

    if-nez v0, :cond_269

    const-string v0, "org.apache.log4j.i.h"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->d:Ljava/lang/Class;

    :goto_8c
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "l"

    sget-object v0, Lorg/apache/log4j/i/ad;->e:Ljava/lang/Class;

    if-nez v0, :cond_26d

    const-string v0, "org.apache.log4j.i.j"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->e:Ljava/lang/Class;

    :goto_9d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L"

    sget-object v0, Lorg/apache/log4j/i/ad;->f:Ljava/lang/Class;

    if-nez v0, :cond_271

    const-string v0, "org.apache.log4j.i.m"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->f:Ljava/lang/Class;

    :goto_ae
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "line"

    sget-object v0, Lorg/apache/log4j/i/ad;->f:Ljava/lang/Class;

    if-nez v0, :cond_275

    const-string v0, "org.apache.log4j.i.m"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->f:Ljava/lang/Class;

    :goto_bf
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "m"

    sget-object v0, Lorg/apache/log4j/i/ad;->g:Ljava/lang/Class;

    if-nez v0, :cond_279

    const-string v0, "org.apache.log4j.i.s"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->g:Ljava/lang/Class;

    :goto_d0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    sget-object v0, Lorg/apache/log4j/i/ad;->g:Ljava/lang/Class;

    if-nez v0, :cond_27d

    const-string v0, "org.apache.log4j.i.s"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->g:Ljava/lang/Class;

    :goto_e1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "n"

    sget-object v0, Lorg/apache/log4j/i/ad;->h:Ljava/lang/Class;

    if-nez v0, :cond_281

    const-string v0, "org.apache.log4j.i.n"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->h:Ljava/lang/Class;

    :goto_f2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "M"

    sget-object v0, Lorg/apache/log4j/i/ad;->i:Ljava/lang/Class;

    if-nez v0, :cond_285

    const-string v0, "org.apache.log4j.i.t"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->i:Ljava/lang/Class;

    :goto_103
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "method"

    sget-object v0, Lorg/apache/log4j/i/ad;->i:Ljava/lang/Class;

    if-nez v0, :cond_289

    const-string v0, "org.apache.log4j.i.t"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->i:Ljava/lang/Class;

    :goto_114
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "p"

    sget-object v0, Lorg/apache/log4j/i/ad;->j:Ljava/lang/Class;

    if-nez v0, :cond_28d

    const-string v0, "org.apache.log4j.i.l"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->j:Ljava/lang/Class;

    :goto_125
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "level"

    sget-object v0, Lorg/apache/log4j/i/ad;->j:Ljava/lang/Class;

    if-nez v0, :cond_291

    const-string v0, "org.apache.log4j.i.l"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->j:Ljava/lang/Class;

    :goto_136
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "r"

    sget-object v0, Lorg/apache/log4j/i/ad;->k:Ljava/lang/Class;

    if-nez v0, :cond_295

    const-string v0, "org.apache.log4j.i.ag"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->k:Ljava/lang/Class;

    :goto_147
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "relative"

    sget-object v0, Lorg/apache/log4j/i/ad;->k:Ljava/lang/Class;

    if-nez v0, :cond_299

    const-string v0, "org.apache.log4j.i.ag"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->k:Ljava/lang/Class;

    :goto_158
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    sget-object v0, Lorg/apache/log4j/i/ad;->l:Ljava/lang/Class;

    if-nez v0, :cond_29d

    const-string v0, "org.apache.log4j.i.aj"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->l:Ljava/lang/Class;

    :goto_169
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "thread"

    sget-object v0, Lorg/apache/log4j/i/ad;->l:Ljava/lang/Class;

    if-nez v0, :cond_2a1

    const-string v0, "org.apache.log4j.i.aj"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->l:Ljava/lang/Class;

    :goto_17a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x"

    sget-object v0, Lorg/apache/log4j/i/ad;->m:Ljava/lang/Class;

    if-nez v0, :cond_2a5

    const-string v0, "org.apache.log4j.i.u"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->m:Ljava/lang/Class;

    :goto_18b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ndc"

    sget-object v0, Lorg/apache/log4j/i/ad;->m:Ljava/lang/Class;

    if-nez v0, :cond_2a9

    const-string v0, "org.apache.log4j.i.u"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->m:Ljava/lang/Class;

    :goto_19c
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X"

    sget-object v0, Lorg/apache/log4j/i/ad;->n:Ljava/lang/Class;

    if-nez v0, :cond_2ad

    const-string v0, "org.apache.log4j.i.af"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->n:Ljava/lang/Class;

    :goto_1ad
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "properties"

    sget-object v0, Lorg/apache/log4j/i/ad;->n:Ljava/lang/Class;

    if-nez v0, :cond_2b1

    const-string v0, "org.apache.log4j.i.af"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->n:Ljava/lang/Class;

    :goto_1be
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sn"

    sget-object v0, Lorg/apache/log4j/i/ad;->o:Ljava/lang/Class;

    if-nez v0, :cond_2b5

    const-string v0, "org.apache.log4j.i.ai"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->o:Ljava/lang/Class;

    :goto_1cf
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sequenceNumber"

    sget-object v0, Lorg/apache/log4j/i/ad;->o:Ljava/lang/Class;

    if-nez v0, :cond_2b9

    const-string v0, "org.apache.log4j.i.ai"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->o:Ljava/lang/Class;

    :goto_1e0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "throwable"

    sget-object v0, Lorg/apache/log4j/i/ad;->p:Ljava/lang/Class;

    if-nez v0, :cond_2bd

    const-string v0, "org.apache.log4j.i.ak"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->p:Ljava/lang/Class;

    :goto_1f1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/log4j/i/ae;

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/ae;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/log4j/i/ad;->y:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "d"

    sget-object v0, Lorg/apache/log4j/i/ad;->q:Ljava/lang/Class;

    if-nez v0, :cond_2c1

    const-string v0, "org.apache.log4j.i.g"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->q:Ljava/lang/Class;

    :goto_20f
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "date"

    sget-object v0, Lorg/apache/log4j/i/ad;->q:Ljava/lang/Class;

    if-nez v0, :cond_2c5

    const-string v0, "org.apache.log4j.i.g"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->q:Ljava/lang/Class;

    :goto_220
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i"

    sget-object v0, Lorg/apache/log4j/i/ad;->r:Ljava/lang/Class;

    if-nez v0, :cond_2c9

    const-string v0, "org.apache.log4j.i.k"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->r:Ljava/lang/Class;

    :goto_231
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "index"

    sget-object v0, Lorg/apache/log4j/i/ad;->r:Ljava/lang/Class;

    if-nez v0, :cond_2cd

    const-string v0, "org.apache.log4j.i.k"

    invoke-static {v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/i/ad;->r:Ljava/lang/Class;

    :goto_242
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/log4j/i/ae;

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/ae;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/log4j/i/ad;->z:Ljava/util/Map;

    return-void

    :cond_24d
    sget-object v0, Lorg/apache/log4j/i/ad;->a:Ljava/lang/Class;

    goto/16 :goto_15

    :cond_251
    sget-object v0, Lorg/apache/log4j/i/ad;->a:Ljava/lang/Class;

    goto/16 :goto_26

    :cond_255
    sget-object v0, Lorg/apache/log4j/i/ad;->b:Ljava/lang/Class;

    goto/16 :goto_37

    :cond_259
    sget-object v0, Lorg/apache/log4j/i/ad;->b:Ljava/lang/Class;

    goto/16 :goto_48

    :cond_25d
    sget-object v0, Lorg/apache/log4j/i/ad;->c:Ljava/lang/Class;

    goto/16 :goto_59

    :cond_261
    sget-object v0, Lorg/apache/log4j/i/ad;->c:Ljava/lang/Class;

    goto/16 :goto_6a

    :cond_265
    sget-object v0, Lorg/apache/log4j/i/ad;->d:Ljava/lang/Class;

    goto/16 :goto_7b

    :cond_269
    sget-object v0, Lorg/apache/log4j/i/ad;->d:Ljava/lang/Class;

    goto/16 :goto_8c

    :cond_26d
    sget-object v0, Lorg/apache/log4j/i/ad;->e:Ljava/lang/Class;

    goto/16 :goto_9d

    :cond_271
    sget-object v0, Lorg/apache/log4j/i/ad;->f:Ljava/lang/Class;

    goto/16 :goto_ae

    :cond_275
    sget-object v0, Lorg/apache/log4j/i/ad;->f:Ljava/lang/Class;

    goto/16 :goto_bf

    :cond_279
    sget-object v0, Lorg/apache/log4j/i/ad;->g:Ljava/lang/Class;

    goto/16 :goto_d0

    :cond_27d
    sget-object v0, Lorg/apache/log4j/i/ad;->g:Ljava/lang/Class;

    goto/16 :goto_e1

    :cond_281
    sget-object v0, Lorg/apache/log4j/i/ad;->h:Ljava/lang/Class;

    goto/16 :goto_f2

    :cond_285
    sget-object v0, Lorg/apache/log4j/i/ad;->i:Ljava/lang/Class;

    goto/16 :goto_103

    :cond_289
    sget-object v0, Lorg/apache/log4j/i/ad;->i:Ljava/lang/Class;

    goto/16 :goto_114

    :cond_28d
    sget-object v0, Lorg/apache/log4j/i/ad;->j:Ljava/lang/Class;

    goto/16 :goto_125

    :cond_291
    sget-object v0, Lorg/apache/log4j/i/ad;->j:Ljava/lang/Class;

    goto/16 :goto_136

    :cond_295
    sget-object v0, Lorg/apache/log4j/i/ad;->k:Ljava/lang/Class;

    goto/16 :goto_147

    :cond_299
    sget-object v0, Lorg/apache/log4j/i/ad;->k:Ljava/lang/Class;

    goto/16 :goto_158

    :cond_29d
    sget-object v0, Lorg/apache/log4j/i/ad;->l:Ljava/lang/Class;

    goto/16 :goto_169

    :cond_2a1
    sget-object v0, Lorg/apache/log4j/i/ad;->l:Ljava/lang/Class;

    goto/16 :goto_17a

    :cond_2a5
    sget-object v0, Lorg/apache/log4j/i/ad;->m:Ljava/lang/Class;

    goto/16 :goto_18b

    :cond_2a9
    sget-object v0, Lorg/apache/log4j/i/ad;->m:Ljava/lang/Class;

    goto/16 :goto_19c

    :cond_2ad
    sget-object v0, Lorg/apache/log4j/i/ad;->n:Ljava/lang/Class;

    goto/16 :goto_1ad

    :cond_2b1
    sget-object v0, Lorg/apache/log4j/i/ad;->n:Ljava/lang/Class;

    goto/16 :goto_1be

    :cond_2b5
    sget-object v0, Lorg/apache/log4j/i/ad;->o:Ljava/lang/Class;

    goto/16 :goto_1cf

    :cond_2b9
    sget-object v0, Lorg/apache/log4j/i/ad;->o:Ljava/lang/Class;

    goto/16 :goto_1e0

    :cond_2bd
    sget-object v0, Lorg/apache/log4j/i/ad;->p:Ljava/lang/Class;

    goto/16 :goto_1f1

    :cond_2c1
    sget-object v0, Lorg/apache/log4j/i/ad;->q:Ljava/lang/Class;

    goto/16 :goto_20f

    :cond_2c5
    sget-object v0, Lorg/apache/log4j/i/ad;->q:Ljava/lang/Class;

    goto/16 :goto_220

    :cond_2c9
    sget-object v0, Lorg/apache/log4j/i/ad;->r:Ljava/lang/Class;

    goto/16 :goto_231

    :cond_2cd
    sget-object v0, Lorg/apache/log4j/i/ad;->r:Ljava/lang/Class;

    goto/16 :goto_242
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return p2

    :cond_b
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_e
.end method

.method private static a(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/i/i;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I
    .registers 13

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/log4j/i/ad;->a(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1, v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;ILjava/util/List;)I

    move-result v1

    invoke-static {v2, p3, p5, p6, v0}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/i/ac;

    move-result-object v0

    if-nez v0, :cond_66

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_56

    :cond_24
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Empty conversion specifier starting at position "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_2b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " in conversion pattern."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/log4j/i/o;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/log4j/i/o;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v0

    invoke-interface {p8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_51
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    return v1

    :cond_56
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Unrecognized conversion specifier ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] starting at position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2b

    :cond_66
    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p8, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_51

    new-instance v0, Lorg/apache/log4j/i/o;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/log4j/i/o;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v0

    invoke-interface {p8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method private static a(Ljava/lang/String;ILjava/util/List;)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_17

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_17

    const/16 v0, 0x7d

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    :cond_17
    return p1

    :cond_18
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/apache/log4j/i/ad;->y:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/i/ac;
    .registers 13

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    move-object v3, p0

    move-object v0, v1

    :goto_9
    if-lez v2, :cond_22

    if-nez v0, :cond_22

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_17

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_1f

    if-eqz p3, :cond_1f

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_22
    if-nez v0, :cond_42

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unrecognized format specifier ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    move-object v0, v1

    :goto_41
    return-object v0

    :cond_42
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_8d

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    :goto_49
    :try_start_49
    const-string v0, "newInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "[Ljava.lang.String;"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/log4j/i/ac;

    if-eqz v4, :cond_d7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    check-cast v0, Lorg/apache/log4j/i/ac;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_8c} :catch_fa

    goto :goto_41

    :cond_8d
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_b8

    :try_start_91
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_91 .. :try_end_96} :catch_99

    move-result-object v0

    move-object v2, v0

    goto :goto_49

    :catch_99
    move-exception v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Class for conversion pattern %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_41

    :cond_b8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad map entry for conversion pattern %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_41

    :cond_d7
    :try_start_d7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " does not extend PatternConverter."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f7} :catch_fa

    :goto_f7
    move-object v0, v1

    goto/16 :goto_41

    :catch_fa
    move-exception v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error creating converter for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_111
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/i/ac;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v5, v3

    sub-int v3, v4, v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_12b} :catch_12d

    goto/16 :goto_41

    :catch_12d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error creating converter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f7
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 15

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v4

    move v0, v2

    :goto_1c
    if-ge v0, v9, :cond_176

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v5, :pswitch_data_190

    :pswitch_27
    move v0, v5

    :goto_28
    move v5, v0

    move v0, v2

    goto :goto_1c

    :pswitch_2b
    if-ne v2, v9, :cond_32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_1c

    :cond_32
    const/16 v1, 0x25

    if-ne v0, v1, :cond_6a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_1a0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Lorg/apache/log4j/i/o;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/log4j/i/o;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v4

    goto :goto_28

    :pswitch_63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_28

    :cond_6a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v5

    goto :goto_28

    :pswitch_6f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    packed-switch v0, :pswitch_data_1a6

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a2

    new-instance v1, Lorg/apache/log4j/i/i;

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->b()Z

    move-result v5

    add-int/lit8 v0, v0, -0x30

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->d()I

    move-result v4

    invoke-direct {v1, v5, v0, v4}, Lorg/apache/log4j/i/i;-><init>(ZII)V

    const/4 v0, 0x4

    move-object v4, v1

    goto :goto_28

    :pswitch_8f
    new-instance v0, Lorg/apache/log4j/i/i;

    const/4 v1, 0x1

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->c()I

    move-result v6

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->d()I

    move-result v4

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/log4j/i/i;-><init>(ZII)V

    move-object v4, v0

    move v0, v5

    goto :goto_28

    :pswitch_a0
    const/4 v0, 0x3

    goto :goto_28

    :cond_a2
    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/i/ad;->a(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/i/i;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_28

    :pswitch_b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    if-lt v0, v1, :cond_db

    const/16 v1, 0x39

    if-gt v0, v1, :cond_db

    new-instance v1, Lorg/apache/log4j/i/i;

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->b()Z

    move-result v6

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->c()I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v7

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->d()I

    move-result v4

    invoke-direct {v1, v6, v0, v4}, Lorg/apache/log4j/i/i;-><init>(ZII)V

    move-object v4, v1

    move v0, v5

    goto/16 :goto_28

    :cond_db
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_e2

    const/4 v0, 0x3

    goto/16 :goto_28

    :cond_e2
    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/i/ad;->a(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/i/i;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_28

    :pswitch_f6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    if-lt v0, v1, :cond_114

    const/16 v1, 0x39

    if-gt v0, v1, :cond_114

    new-instance v1, Lorg/apache/log4j/i/i;

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->b()Z

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->c()I

    move-result v4

    add-int/lit8 v0, v0, -0x30

    invoke-direct {v1, v5, v4, v0}, Lorg/apache/log4j/i/i;-><init>(ZII)V

    const/4 v0, 0x5

    move-object v4, v1

    goto/16 :goto_28

    :cond_114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error occured in position "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_28

    :pswitch_13d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    if-lt v0, v1, :cond_162

    const/16 v1, 0x39

    if-gt v0, v1, :cond_162

    new-instance v1, Lorg/apache/log4j/i/i;

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->b()Z

    move-result v6

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->c()I

    move-result v7

    invoke-virtual {v4}, Lorg/apache/log4j/i/i;->d()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v4

    invoke-direct {v1, v6, v7, v0}, Lorg/apache/log4j/i/i;-><init>(ZII)V

    move-object v4, v1

    move v0, v5

    goto/16 :goto_28

    :cond_162
    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/i/ad;->a(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/i/i;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_28

    :cond_176
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_18f

    new-instance v0, Lorg/apache/log4j/i/o;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/o;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18f
    return-void

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_6f
        :pswitch_27
        :pswitch_f6
        :pswitch_b6
        :pswitch_13d
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x25
        :pswitch_63
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0x2d
        :pswitch_8f
        :pswitch_a0
    .end packed-switch
.end method

.method public static b()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/apache/log4j/i/ad;->z:Ljava/util/Map;

    return-object v0
.end method
