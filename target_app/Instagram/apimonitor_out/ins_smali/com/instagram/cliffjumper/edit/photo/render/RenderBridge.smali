.class public Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;
.super Ljava/lang/Object;
.source "RenderBridge.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a:Ljava/lang/Class;
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->b:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(ILjava/lang/String;)J
.registers 4
const/16 v0, 0x5f
invoke-static {p0, p1, v0}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->saveAndClearCachedImage(ILjava/lang/String;I)J
move-result-wide v0
return-wide v0
.end method
.method public static declared-synchronized a()Z
.registers 4
const-class v1, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;
monitor-enter v1
:try_start_3
sget-boolean v0, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->b:Z
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_26
if-nez v0, :cond_19
:try_start_7
const-string v0, "glcommon"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "jpegutils"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "cj"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->b:Z
:cond_19
:try_end_19
.catchall {:try_start_7 .. :try_end_19} :catchall_26
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_19} :catch_1d
:goto_19
:try_start_19
sget-boolean v0, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->b:Z
:try_end_1b
.catchall {:try_start_19 .. :try_end_1b} :catchall_26
monitor-exit v1
return v0
:catch_1d
move-exception v0
:try_start_1e
sget-object v2, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a:Ljava/lang/Class;
const-string v3, "Could not load native library"
invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_25
.catchall {:try_start_1e .. :try_end_25} :catchall_26
goto :goto_19
:catchall_26
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static native cacheImageInMemory(I)I
.end method
.method private static native saveAndClearCachedImage(ILjava/lang/String;I)J
.end method