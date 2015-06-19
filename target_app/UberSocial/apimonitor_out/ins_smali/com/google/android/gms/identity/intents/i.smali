.class public final Lcom/google/android/gms/identity/intents/i;
.super Ljava/lang/Object;
.field final synthetic a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
.method private constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/identity/intents/i;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V
return-void
.end method
.method public a()Lcom/google/android/gms/identity/intents/UserAddressRequest;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v1, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v1, v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v1
iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
:cond_12
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
return-object v0
.end method
.method public a(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/identity/intents/i;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
if-nez v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
:cond_f
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Ljava/util/Collection;)Lcom/google/android/gms/identity/intents/i;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
if-nez v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
:cond_f
iget-object v0, p0, Lcom/google/android/gms/identity/intents/i;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method