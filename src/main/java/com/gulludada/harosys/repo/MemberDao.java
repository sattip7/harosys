package com.gulludada.harosys.repo;

import java.util.List;

import com.gulludada.harosys.domain.Member;

public interface MemberDao
{
    public Member findById(Long id);

    public Member findByEmail(String email);

    public List<Member> findAllOrderedByName();

    public void register(Member member);
}
