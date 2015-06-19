.class final Lcom/crashlytics/android/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:[B
.field private volatile b:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/crashlytics/android/d;
const/4 v1, 0x0
new-array v1, v1, [B
invoke-direct {v0, v1}, Lcom/crashlytics/android/d;-><init>([B)V
return-void
.end method
.method private constructor <init>([B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/crashlytics/android/d;->b:I
iput-object p1, p0, Lcom/crashlytics/android/d;->a:[B
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/crashlytics/android/d;
.registers 4
:try_start_0
new-instance v0, Lcom/crashlytics/android/d;
const-string v1, "UTF-8"
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {v0, v1}, Lcom/crashlytics/android/d;-><init>([B)V
:try_end_b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "UTF-8 not supported."
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public static a([BII)Lcom/crashlytics/android/d;
.registers 5
const/4 v1, 0x0
new-array v0, p2, [B
invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
new-instance v1, Lcom/crashlytics/android/d;
invoke-direct {v1, v0}, Lcom/crashlytics/android/d;-><init>([B)V
return-object v1
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/crashlytics/android/d;->a:[B
array-length v0, v0
return v0
.end method
.method public final a([BIII)V
.registers 6
iget-object v0, p0, Lcom/crashlytics/android/d;->a:[B
invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public final b()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/crashlytics/android/d;->a:[B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/crashlytics/android/d;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/crashlytics/android/d;
iget-object v2, p0, Lcom/crashlytics/android/d;->a:[B
array-length v3, v2
iget-object v2, p1, Lcom/crashlytics/android/d;->a:[B
array-length v2, v2
if-eq v3, v2, :cond_17
move v0, v1
goto :goto_4
:cond_17
iget-object v4, p0, Lcom/crashlytics/android/d;->a:[B
iget-object v5, p1, Lcom/crashlytics/android/d;->a:[B
move v2, v1
:goto_1c
if-ge v2, v3, :cond_4
aget-byte v6, v4, v2
aget-byte v7, v5, v2
if-eq v6, v7, :cond_26
move v0, v1
goto :goto_4
:cond_26
add-int/lit8 v2, v2, 0x1
goto :goto_1c
.end method
.method public final hashCode()I
.registers 6
iget v0, p0, Lcom/crashlytics/android/d;->b:I
if-nez v0, :cond_1d
iget-object v4, p0, Lcom/crashlytics/android/d;->a:[B
iget-object v0, p0, Lcom/crashlytics/android/d;->a:[B
array-length v2, v0
const/4 v0, 0x0
move v1, v0
move v0, v2
:goto_c
if-ge v1, v2, :cond_18
mul-int/lit8 v0, v0, 0x1f
aget-byte v3, v4, v1
add-int/2addr v3, v0
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v3
goto :goto_c
:cond_18
if-nez v0, :cond_1b
const/4 v0, 0x1
:cond_1b
iput v0, p0, Lcom/crashlytics/android/d;->b:I
:cond_1d
return v0
.end method