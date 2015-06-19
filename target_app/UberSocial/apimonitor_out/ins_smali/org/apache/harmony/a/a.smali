.class public Lorg/apache/harmony/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x1
.field public static final b:I = 0x2
.field public static final c:I = -0x1
.field public static final d:I = 0x1
.field public static final e:I = 0x2
.field public static final f:I = -0x1
.field private static g:I
.field private static h:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lorg/apache/harmony/a/a;->g:I
sput v0, Lorg/apache/harmony/a/a;->h:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()I
.registers 3
sget v0, Lorg/apache/harmony/a/a;->g:I
if-nez v0, :cond_1b
const-string v0, "os.name"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
const-string v1, "win"
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v1
if-nez v1, :cond_1e
const/4 v0, 0x1
sput v0, Lorg/apache/harmony/a/a;->g:I
:cond_1b
:goto_1b
sget v0, Lorg/apache/harmony/a/a;->g:I
return v0
:cond_1e
const-string v1, "lin"
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_2a
const/4 v0, 0x2
sput v0, Lorg/apache/harmony/a/a;->g:I
goto :goto_1b
:cond_2a
const/4 v0, -0x1
sput v0, Lorg/apache/harmony/a/a;->g:I
goto :goto_1b
.end method