.class public final enum Lcom/instagram/d/a;
.super Ljava/lang/Enum;
.source "InstagramAppType.java"
.field public static final enum a:Lcom/instagram/d/a;
.field public static final enum b:Lcom/instagram/d/a;
.field public static final enum c:Lcom/instagram/d/a;
.field private static final synthetic g:[Lcom/instagram/d/a;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/instagram/d/a;
const-string v1, "PROD"
const-string v2, "06WDGFKCrfUzxWmofXz9uZ8H0uOWvN7M1R-THbQ"
const-string v3, "https://www.facebook.com/mobile/instagram_android_crash_logs/"
invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/d/a;->a:Lcom/instagram/d/a;
new-instance v0, Lcom/instagram/d/a;
const-string v1, "INHOUSE"
const-string v2, "06WDGFKCrfUwS1BI418HU7liXsKpfyhFXdtaP9A"
const-string v3, "https://www.facebook.com/mobile/instagram_android_beta_crash_logs/"
invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/d/a;->b:Lcom/instagram/d/a;
new-instance v0, Lcom/instagram/d/a;
const-string v1, "DEBUG"
const-string v2, "06WDGFKCrfUyKjrEV2hg0-PMws5JD_92YXMOQIQ"
const-string v3, "https://www.facebook.com/mobile/instagram_android_beta_crash_logs/"
invoke-direct {v0, v1, v6, v2, v3}, Lcom/instagram/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/d/a;->c:Lcom/instagram/d/a;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/d/a;
sget-object v1, Lcom/instagram/d/a;->a:Lcom/instagram/d/a;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/d/a;->b:Lcom/instagram/d/a;
aput-object v1, v0, v5
sget-object v1, Lcom/instagram/d/a;->c:Lcom/instagram/d/a;
aput-object v1, v0, v6
sput-object v0, Lcom/instagram/d/a;->g:[Lcom/instagram/d/a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
const-string v0, "567067343352427"
iput-object v0, p0, Lcom/instagram/d/a;->f:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/d/a;->d:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/d/a;->e:Ljava/lang/String;
return-void
.end method
.method public static c()Ljava/lang/String;
.registers 1
const-string v0, "567067343352427"
return-object v0
.end method
.method public static d()Lcom/instagram/d/a;
.registers 2
sget-object v0, Lcom/instagram/d/b;->a:[I
invoke-static {}, Lcom/instagram/common/o/a;->a()Lcom/instagram/common/o/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/common/o/b;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_18
sget-object v0, Lcom/instagram/d/a;->a:Lcom/instagram/d/a;
:goto_11
return-object v0
:pswitch_12
sget-object v0, Lcom/instagram/d/a;->c:Lcom/instagram/d/a;
goto :goto_11
:pswitch_15
sget-object v0, Lcom/instagram/d/a;->b:Lcom/instagram/d/a;
goto :goto_11
:pswitch_data_18
.packed-switch 0x1
:pswitch_12
:pswitch_15
.end packed-switch
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/d/a;
.registers 2
const-class v0, Lcom/instagram/d/a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/d/a;
return-object v0
.end method
.method public static values()[Lcom/instagram/d/a;
.registers 1
sget-object v0, Lcom/instagram/d/a;->g:[Lcom/instagram/d/a;
invoke-virtual {v0}, [Lcom/instagram/d/a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/d/a;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/d/a;->d:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/d/a;->e:Ljava/lang/String;
return-object v0
.end method