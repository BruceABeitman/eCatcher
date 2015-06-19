.class public Lcom/spotify/cosmos/android/Cosmos;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static sInjectedResolver:Lcom/spotify/cosmos/android/DeferredResolver;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clearInjectedResolver()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/spotify/cosmos/android/Cosmos;->sInjectedResolver:Lcom/spotify/cosmos/android/DeferredResolver;
return-void
.end method
.method public static getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
.registers 2
sget-object v0, Lcom/spotify/cosmos/android/Cosmos;->sInjectedResolver:Lcom/spotify/cosmos/android/DeferredResolver;
if-eqz v0, :cond_7
sget-object v0, Lcom/spotify/cosmos/android/Cosmos;->sInjectedResolver:Lcom/spotify/cosmos/android/DeferredResolver;
:goto_6
return-object v0
:cond_7
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver;
invoke-direct {v0, p0}, Lcom/spotify/cosmos/android/DeferredResolver;-><init>(Landroid/content/Context;)V
goto :goto_6
.end method
.method public static injectResolver(Lcom/spotify/cosmos/android/DeferredResolver;)V
.registers 1
sput-object p0, Lcom/spotify/cosmos/android/Cosmos;->sInjectedResolver:Lcom/spotify/cosmos/android/DeferredResolver;
return-void
.end method