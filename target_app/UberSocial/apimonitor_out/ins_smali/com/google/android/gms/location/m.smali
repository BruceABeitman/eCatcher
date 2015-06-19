.class public final Lcom/google/android/gms/location/m;
.super Ljava/lang/Object;
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field public static final c:I = 0x3e8
.field public static final d:I = 0x3e9
.field public static final e:I = 0x3ea
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(I)I
.registers 3
const/4 v0, 0x1
if-ltz p0, :cond_5
if-le p0, v0, :cond_d
:cond_5
const/16 v1, 0x3e8
if-gt v1, p0, :cond_e
const/16 v1, 0x3ea
if-gt p0, v1, :cond_e
:cond_d
:goto_d
return p0
:cond_e
move p0, v0
goto :goto_d
.end method