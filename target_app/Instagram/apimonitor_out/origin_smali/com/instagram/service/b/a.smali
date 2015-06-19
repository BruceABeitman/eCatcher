.class public final Lcom/instagram/service/b/a;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "CustomObjectMapper.java"


# static fields
.field private static a:Lcom/instagram/service/b/a;


# direct methods
.method private constructor <init>()V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/service/b/a;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "MediaModule"

    new-instance v2, Lcom/fasterxml/jackson/a/w;

    invoke-direct {v2}, Lcom/fasterxml/jackson/a/w;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V

    const-class v1, Lcom/instagram/user/c/a;

    new-instance v2, Lcom/instagram/service/b/c;

    const-class v3, Lcom/instagram/user/c/a;

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v4

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/instagram/service/b/c;-><init>(Lcom/instagram/service/b/a;Lcom/instagram/service/b/a;Ljava/lang/Class;Lcom/instagram/user/c/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-class v1, Lcom/instagram/venue/model/Venue;

    new-instance v2, Lcom/instagram/service/b/b;

    const-class v3, Lcom/instagram/venue/model/Venue;

    invoke-direct {v2, p0, p0, v3}, Lcom/instagram/service/b/b;-><init>(Lcom/instagram/service/b/a;Lcom/instagram/service/b/a;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-virtual {p0, v0}, Lcom/instagram/service/b/a;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public static a()Lcom/instagram/service/b/a;
    .registers 1

    sget-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/instagram/service/b/a;->b()V

    :cond_7
    sget-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;

    return-object v0
.end method

.method private static declared-synchronized b()V
    .registers 2

    const-class v1, Lcom/instagram/service/b/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/instagram/service/b/a;

    invoke-direct {v0}, Lcom/instagram/service/b/a;-><init>()V

    sput-object v0, Lcom/instagram/service/b/a;->a:Lcom/instagram/service/b/a;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method
