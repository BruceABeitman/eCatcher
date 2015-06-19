.class public Lcom/spotify/mobile/android/applink/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private b:Ljava/util/Vector;
.field private c:Lcom/spotify/mobile/android/applink/l;
.field private d:I
.field private e:I
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/c;->b:Ljava/util/Vector;
iput-object p1, p0, Lcom/spotify/mobile/android/applink/c;->a:Ljava/lang/String;
invoke-static {p2}, Lcom/spotify/mobile/android/applink/c;->a(Ljava/lang/String;)Ljava/util/Vector;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/c;->b:Ljava/util/Vector;
return-void
.end method
.method private static a(Ljava/lang/String;)Ljava/util/Vector;
.registers 6
const-string v0, ","
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
array-length v3, v1
const/4 v0, 0x0
:goto_d
if-ge v0, v3, :cond_1b
aget-object v4, v1, v0
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1b
return-object v2
.end method
.method public final a(I)Lcom/spotify/mobile/android/applink/c;
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/applink/c;->d:I
return-object p0
.end method
.method final a(Lcom/spotify/mobile/android/applink/l;)Lcom/spotify/mobile/android/applink/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/applink/c;->c:Lcom/spotify/mobile/android/applink/l;
return-object p0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/util/Vector;
.registers 3
new-instance v0, Ljava/util/Vector;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/c;->b:Ljava/util/Vector;
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method final b(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/applink/c;->e:I
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/applink/c;->d:I
return v0
.end method
.method final d()Lcom/spotify/mobile/android/applink/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/c;->c:Lcom/spotify/mobile/android/applink/l;
return-object v0
.end method
.method final e()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/applink/c;->e:I
return v0
.end method