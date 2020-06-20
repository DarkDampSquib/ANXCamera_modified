.class Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;
.super Ljava/lang/Object;
.source "MapFieldLite.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/MapFieldLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutatabilityAwareSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;


# direct methods
.method constructor <init>(Lcom/android/framework/protobuf/MutabilityOracle;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MutabilityOracle;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    iput-object p2, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MutabilityOracle;->ensureMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MutabilityOracle;->ensureMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MutabilityOracle;->ensureMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareIterator;-><init>(Lcom/android/framework/protobuf/MutabilityOracle;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MutabilityOracle;->ensureMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MutabilityOracle;->ensureMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->mutabilityOracle:Lcom/android/framework/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MutabilityOracle;->ensureMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/MapFieldLite$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method